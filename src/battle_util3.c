#include "global.h"
#include "battle.h"
#include "battle_util.h"
#include "pokemon.h"
#include "util.h"
#include "random.h"

#define LEFT_PARTNER(battler)   (battler - 1)
#define RIGHT_PARTNER(battler)  (battler + 1)

bool32 HasAliveLeftPartner(u32 battler)
{
    if (battler == B_POSITION_PLAYER_LEFT || battler == B_POSITION_OPPONENT_LEFT)
        return FALSE;
    else if (IsBattlerAlive(LEFT_PARTNER(battler)))
        return TRUE;
    else
        return HasAliveLeftPartner(LEFT_PARTNER(battler));
}

u32 GetAliveLeftPartner(u32 battler)
{
    if (!HasAliveLeftPartner(battler)) // *TODO - potential redundancy (?)
        return battler;
    else if (IsBattlerAlive(LEFT_PARTNER(battler)))
        return LEFT_PARTNER(battler);
    else
        return GetAliveLeftPartner(LEFT_PARTNER(battler)); // *TODO - recursion (?)
}

bool32 HasAliveRightPartner(u32 battler)
{
    if (battler == B_POSITION_PLAYER_RIGHT || battler == B_POSITION_OPPONENT_5)
        return FALSE;
    else if (IsBattlerAlive(RIGHT_PARTNER(battler)))
        return TRUE;
    else
        return HasAliveRightPartner(RIGHT_PARTNER(battler));
}

u32 GetAliveRightPartner(u32 battler)
{
    if (!HasAliveRightPartner(battler))
        return battler;
    else if (IsBattlerAlive(RIGHT_PARTNER(battler)))
        return RIGHT_PARTNER(battler);
    else
        return GetAliveRightPartner(RIGHT_PARTNER(battler));
}

u32 GetRandomTargetOnSide(u32 side)
{
    u32 battler, hasLeft, hasRight;
    if (side == B_SIDE_PLAYER)
        battler = Random() % MAX_PLAYER_BATTLERS;
    else
        battler = Random() % (MAX_BATTLERS_COUNT - MAX_PLAYER_BATTLERS) + MAX_PLAYER_BATTLERS;

    if (IsBattlerAlive(battler))
    {
        return battler;
    }
    else
    {
        hasLeft = HasAliveLeftPartner(battler);
        hasRight = HasAliveRightPartner(battler);
        if (hasLeft && hasRight)
        {
            if (Random() & 1)
                return GetAliveRightPartner(battler);
            else
                return GetAliveLeftPartner(battler);
        }
        else if (hasLeft)
            return GetAliveLeftPartner(battler);
        else if (hasRight)
            return GetAliveRightPartner(battler);
        else
            return battler;
    }
}
