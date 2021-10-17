#include "ultra64.h"

void sub_GAME_7F007770(void) {
    u32 rightHand;
    u32 leftHand;
    s32 playerCount = getPlayerCount();
    s32 playerNum = get_cur_playernum();
    s32 playerIndex;

    for(playerIndex = 0; playerIndex < playerCount; playerIndex++) {
        set_cur_player(playerIndex);
        sub_GAME_7F08DB08(&rightHand, &leftHand);
        store_favorite_weapon_current_player(rightHand, leftHand);
    }

    set_cur_player(playerNum);
}
