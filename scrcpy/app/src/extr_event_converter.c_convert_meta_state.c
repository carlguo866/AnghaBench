
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum android_metastate { ____Placeholder_android_metastate } android_metastate ;
typedef int SDL_Keymod ;


 int AMETA_ALT_LEFT_ON ;
 int AMETA_ALT_RIGHT_ON ;
 int AMETA_CAPS_LOCK_ON ;
 int AMETA_CTRL_LEFT_ON ;
 int AMETA_CTRL_RIGHT_ON ;
 int AMETA_META_LEFT_ON ;
 int AMETA_META_RIGHT_ON ;
 int AMETA_NUM_LOCK_ON ;
 int AMETA_SHIFT_LEFT_ON ;
 int AMETA_SHIFT_RIGHT_ON ;
 int KMOD_CAPS ;
 int KMOD_LALT ;
 int KMOD_LCTRL ;
 int KMOD_LGUI ;
 int KMOD_LSHIFT ;
 int KMOD_MODE ;
 int KMOD_NUM ;
 int KMOD_RALT ;
 int KMOD_RCTRL ;
 int KMOD_RGUI ;
 int KMOD_RSHIFT ;
 int autocomplete_metastate (int) ;

__attribute__((used)) static enum android_metastate
convert_meta_state(SDL_Keymod mod) {
    enum android_metastate metastate = 0;
    if (mod & KMOD_LSHIFT) {
        metastate |= AMETA_SHIFT_LEFT_ON;
    }
    if (mod & KMOD_RSHIFT) {
        metastate |= AMETA_SHIFT_RIGHT_ON;
    }
    if (mod & KMOD_LCTRL) {
        metastate |= AMETA_CTRL_LEFT_ON;
    }
    if (mod & KMOD_RCTRL) {
        metastate |= AMETA_CTRL_RIGHT_ON;
    }
    if (mod & KMOD_LALT) {
        metastate |= AMETA_ALT_LEFT_ON;
    }
    if (mod & KMOD_RALT) {
        metastate |= AMETA_ALT_RIGHT_ON;
    }
    if (mod & KMOD_LGUI) {
        metastate |= AMETA_META_LEFT_ON;
    }
    if (mod & KMOD_RGUI) {
        metastate |= AMETA_META_RIGHT_ON;
    }
    if (mod & KMOD_NUM) {
        metastate |= AMETA_NUM_LOCK_ON;
    }
    if (mod & KMOD_CAPS) {
        metastate |= AMETA_CAPS_LOCK_ON;
    }
    if (mod & KMOD_MODE) {

    }


    return autocomplete_metastate(metastate);
}
