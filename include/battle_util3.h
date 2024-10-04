#ifndef GUARD_BATTLE_UTIL3_H
#define GUARD_BATTLE_UTIL3_H

bool32 HasAliveLeftPartner(u32 battler);
u32 GetAliveLeftPartner(u32 battler);
bool32 HasAliveRightPartner(u32 battler);
u32 GetAliveRightPartner(u32 battler);
u32 GetRandomTargetOnSide(u32 side);
u32 GetFirstAliveBattlerOnSide(u32 side);
u32 FindAbilityOnBattlerSide(u32 battler, u32 ability);

static inline u32 GetFirstBattlerOnSide(u32 side)
{
    return side == B_SIDE_PLAYER ? B_POSITION_PLAYER_LEFT : B_POSITION_OPPONENT_LEFT;
}

#endif
