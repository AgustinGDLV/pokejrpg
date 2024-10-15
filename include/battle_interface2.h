#ifndef GUARD_BATTLE_INTERFACE_2_H
#define GUARD_BATTLE_INTERFACE_2_H

#define OPPONENT_SPRITE_HEIGHT 65

void ClearHealthboxWindowIds(void);
void UpdateHpTextInHealthbox(u32 battler, s16 currHp, s16 maxHp);
void UpdateHealthboxAttribute(u32 battler, struct Pokemon *mon, u8 elementId);
void CreatePopUpIcon(u32 battler);
void HidePopUpIcon(u32 battler);
void DestroyPopUpIcon(u32 battler);

#endif
