#include "global.h"
#include "malloc.h"
#include "battle.h"
#include "bg.h"
#include "pokemon.h"
#include "battle_controllers.h"
#include "battle_interface.h"
#include "graphics.h"
#include "sprite.h"
#include "window.h"
#include "string_util.h"
#include "text.h"
#include "sound.h"
#include "decompress.h"
#include "task.h"
#include "util.h"
#include "gpu_regs.h"
#include "battle_message.h"
#include "palette.h"
#include "pokemon_icon.h"
#include "international_string_util.h"
#include "safari_zone.h"
#include "battle_anim.h"
#include "data.h"
#include "strings.h"
#include "constants/rgb.h"

static const u8 sHealthboxTextColor[] = {3, 1, 2}; // black, white, dark gray

enum HealthboxWindow
{
    WINDOW_PLAYER_1_NAME,
    WINDOW_PLAYER_2_NAME,
    WINDOW_PLAYER_3_NAME,
    WINDOW_PLAYER_1_HP,
    WINDOW_PLAYER_2_HP,
    WINDOW_PLAYER_3_HP,
    WINDOW_PLAYER_1_PP,
    WINDOW_PLAYER_2_PP,
    WINDOW_PLAYER_3_PP,
    WINDOW_COUNT,
};

#define BASE_BLOCK_START 300

static const struct WindowTemplate sHealthboxWindowTemplates[] =
{
    [WINDOW_PLAYER_1_NAME] =
    {
        .bg = 0,
        .tilemapLeft = 1,
        .tilemapTop = 15,
        .width = 8,
        .height = 1,
        .paletteNum = 0,
        .baseBlock = BASE_BLOCK_START + 0,
    },
    [WINDOW_PLAYER_1_HP] =
    {
        .bg = 0,
        .tilemapLeft = 1,
        .tilemapTop = 17,
        .width = 8,
        .height = 1,
        .paletteNum = 0,
        .baseBlock = BASE_BLOCK_START + 16,
    },
    [WINDOW_PLAYER_2_NAME] =
    {
        .bg = 0,
        .tilemapLeft = 11,
        .tilemapTop = 15,
        .width = 8,
        .height = 1,
        .paletteNum = 0,
        .baseBlock = BASE_BLOCK_START + 32,
    },
    [WINDOW_PLAYER_2_HP] =
    {
        .bg = 0,
        .tilemapLeft = 11,
        .tilemapTop = 17,
        .width = 8,
        .height = 1,
        .paletteNum = 0,
        .baseBlock = BASE_BLOCK_START + 40,
    },
    [WINDOW_PLAYER_3_NAME] =
    {
        .bg = 0,
        .tilemapLeft = 21,
        .tilemapTop = 15,
        .width = 8,
        .height = 1,
        .paletteNum = 0,
        .baseBlock = BASE_BLOCK_START + 64,
    },
    [WINDOW_PLAYER_3_HP] =
    {
        .bg = 0,
        .tilemapLeft = 21,
        .tilemapTop = 17,
        .width = 8,
        .height = 1,
        .paletteNum = 0,
        .baseBlock = BASE_BLOCK_START + 72,
    },
};

EWRAM_DATA static u8 sHealthboxWindowIds[WINDOW_COUNT] = {0};
EWRAM_DATA static u8 sPopUpIconSpriteIds[MAX_PLAYER_BATTLERS] = {0};

void ClearHealthboxWindowIds(void)
{
    u32 i;
    for (i = 0; i < ARRAY_COUNT(sHealthboxWindowIds); ++i)
        sHealthboxWindowIds[i] = 0;
}

static void UpdateNickInHealthbox(u32 battler, struct Pokemon *mon)
{
    u8 nickname[POKEMON_NAME_LENGTH + 1];
    struct Pokemon *illusionMon = GetIllusionMonPtr(battler);
    if (illusionMon != NULL)
        mon = illusionMon;

    GetMonData(mon, MON_DATA_NICKNAME, nickname);
    StringGet_Nickname(nickname);
    StringCopyUppercase(gDisplayedStringBattle, nickname);

    if (sHealthboxWindowIds[WINDOW_PLAYER_1_NAME + battler] == 0)
        sHealthboxWindowIds[WINDOW_PLAYER_1_NAME + battler] = AddWindow(&sHealthboxWindowTemplates[WINDOW_PLAYER_1_NAME + battler]);

    FillWindowPixelBuffer(sHealthboxWindowIds[WINDOW_PLAYER_1_NAME + battler], PIXEL_FILL(3));
    AddTextPrinterParameterized3(sHealthboxWindowIds[WINDOW_PLAYER_1_NAME + battler], FONT_HEALTHBOX, 0, 0, sHealthboxTextColor, TEXT_SKIP_DRAW, gDisplayedStringBattle);
    PutWindowTilemap(sHealthboxWindowIds[WINDOW_PLAYER_1_NAME + battler]);
    CopyWindowToVram(sHealthboxWindowIds[WINDOW_PLAYER_1_NAME + battler], COPYWIN_FULL);

    // Copy to other sections of BG 0; offsets from MGBA map viewer
    u8 *ptr = GetBgTilemapBuffer(0);
    CpuCopy16(ptr + 0x3C2 + (battler * 20), ptr + 0x8C2 + (battler * 20), 16);
    CpuCopy16(ptr + 0x3C2 + (battler * 20), ptr + 0xDC2 + (battler * 20), 16);
    CopyBgTilemapBufferToVram(0);
}

void UpdateHpTextInHealthbox(u32 battler, s16 currHp, s16 maxHp)
{
    u8 text[12], *txtPtr;

    txtPtr = StringCopy(text, COMPOUND_STRING("HP "));
    txtPtr = ConvertIntToDecimalStringN(txtPtr, currHp, STR_CONV_MODE_RIGHT_ALIGN, 4);
    *txtPtr++ = CHAR_SLASH;
    txtPtr = ConvertIntToDecimalStringN(txtPtr, maxHp, STR_CONV_MODE_LEFT_ALIGN, 4);

    if (sHealthboxWindowIds[WINDOW_PLAYER_1_HP + battler] == 0)
        sHealthboxWindowIds[WINDOW_PLAYER_1_HP + battler] = AddWindow(&sHealthboxWindowTemplates[WINDOW_PLAYER_1_HP + battler]);

    FillWindowPixelBuffer(sHealthboxWindowIds[WINDOW_PLAYER_1_HP + battler], PIXEL_FILL(3));
    AddTextPrinterParameterized3(sHealthboxWindowIds[WINDOW_PLAYER_1_HP + battler], FONT_HEALTHBOX, 0, 0, sHealthboxTextColor, TEXT_SKIP_DRAW, text);
    PutWindowTilemap(sHealthboxWindowIds[WINDOW_PLAYER_1_HP + battler]);
    CopyWindowToVram(sHealthboxWindowIds[WINDOW_PLAYER_1_HP + battler], COPYWIN_FULL);

    // Copy to other sections of BG 0; offsets from MGBA map viewer
    u8 *ptr = GetBgTilemapBuffer(0);
    CpuCopy16(ptr + (0x3C2 + 0x80) + (battler * 20), ptr + (0x8C2 + 0x80) + (battler * 20), 16);
    CpuCopy16(ptr + (0x3C2 + 0x80) + (battler * 20), ptr + (0xDC2 + 0x80) + (battler * 20), 16);
    CopyBgTilemapBufferToVram(0);
}

void UpdateHealthboxAttribute(u32 battler, struct Pokemon *mon, u8 elementId)
{
    s32 maxHp = GetMonData(mon, MON_DATA_MAX_HP);
    s32 currHp = GetMonData(mon, MON_DATA_HP);

    if (battler > MAX_PLAYER_BATTLERS) // safety check
        return;

    // if (elementId == HEALTHBOX_LEVEL || elementId == HEALTHBOX_ALL)
    //     UpdateLvlInHealthbox(healthboxSpriteId, GetMonData(mon, MON_DATA_LEVEL));
    if (elementId == HEALTHBOX_NICK || elementId == HEALTHBOX_ALL)
        UpdateNickInHealthbox(battler, mon);
    if (elementId == HEALTHBOX_MAX_HP || elementId == HEALTHBOX_CURRENT_HP || elementId == HEALTHBOX_ALL)
        UpdateHpTextInHealthbox(battler, currHp, maxHp);
    // if (elementId == HEALTHBOX_STATUS_ICON || elementId == HEALTHBOX_ALL)
    //     UpdateStatusIconInHealthbox(healthboxSpriteId);
    // if (elementId == HEALTHBOX_SAFARI_ALL_TEXT)
    //     UpdateSafariBallsTextOnHealthbox(healthboxSpriteId);
    // if (elementId == HEALTHBOX_SAFARI_ALL_TEXT || elementId == HEALTHBOX_SAFARI_BALLS_TEXT)
    //     UpdateLeftNoOfBallsTextOnHealthbox(healthboxSpriteId);
}

#define sBattler    data[0]
#define sHide       data[1]
#define sTimer      data[2]

static void SpriteCB_PopUpIcon(struct Sprite* sprite)
{
    if (sprite->sHide)
    {
        if (++sprite->y == 120)
        {
            sPopUpIconSpriteIds[sprite->sBattler] = 0xFF;
            DestroySprite(sprite);
        }
    }
    else
    {
        if (sprite->y != 112 - 8)
        {
            sprite->y--;
        }
        // else if (++sprite->sTimer >= 2)
        // {
        //     sprite->sTimer = 0;
        //     sprite->y2 ^= 1;
        // }
    }
}

void CreatePopUpIcon(u32 battler)
{
    if (sPopUpIconSpriteIds[battler] == 0 || sPopUpIconSpriteIds[battler] == 0xFF)
    {
        struct Pokemon *mon = &gPlayerParty[gBattlerPartyIndexes[battler]];
        u32 species = GetMonData(mon, MON_DATA_SPECIES);
        u32 personality = GetMonData(mon, MON_DATA_PERSONALITY);

        LoadMonIconPalettes();
        sPopUpIconSpriteIds[battler] = CreateMonIcon(species, SpriteCB_PopUpIcon, 40 + (80 * battler), 112, 1, personality);
        gSprites[sPopUpIconSpriteIds[battler]].oam.priority = 1;
        gSprites[sPopUpIconSpriteIds[battler]].sBattler = battler;
    }
}

void HidePopUpIcon(u32 battler)
{
    gSprites[sPopUpIconSpriteIds[battler]].sHide = TRUE;
}

void HideAllPopUpIcons(void)
{
    u32 i;
    for (i = 0; i < MAX_PLAYER_BATTLERS; ++i)
        if (sPopUpIconSpriteIds[i] != 0xFF)
            gSprites[sPopUpIconSpriteIds[i]].sHide = TRUE;
}

bool32 WaitForPopUpIconsToHide(void)
{
    u32 i;
    for (i = 0; i < MAX_PLAYER_BATTLERS; ++i)
        if (sPopUpIconSpriteIds[i] != 0xFF)
            return TRUE;
    return FALSE;
}

void DestroyPopUpIcon(u32 battler)
{
    DestroySprite(&gSprites[sPopUpIconSpriteIds[battler]]);
    sPopUpIconSpriteIds[battler] = 0xFF;
}
