
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_51__ TYPE_9__ ;
typedef struct TYPE_50__ TYPE_8__ ;
typedef struct TYPE_49__ TYPE_7__ ;
typedef struct TYPE_48__ TYPE_6__ ;
typedef struct TYPE_47__ TYPE_5__ ;
typedef struct TYPE_46__ TYPE_4__ ;
typedef struct TYPE_45__ TYPE_3__ ;
typedef struct TYPE_44__ TYPE_2__ ;
typedef struct TYPE_43__ TYPE_25__ ;
typedef struct TYPE_42__ TYPE_24__ ;
typedef struct TYPE_41__ TYPE_23__ ;
typedef struct TYPE_40__ TYPE_22__ ;
typedef struct TYPE_39__ TYPE_21__ ;
typedef struct TYPE_38__ TYPE_20__ ;
typedef struct TYPE_37__ TYPE_1__ ;
typedef struct TYPE_36__ TYPE_19__ ;
typedef struct TYPE_35__ TYPE_18__ ;
typedef struct TYPE_34__ TYPE_17__ ;
typedef struct TYPE_33__ TYPE_16__ ;
typedef struct TYPE_32__ TYPE_15__ ;
typedef struct TYPE_31__ TYPE_14__ ;
typedef struct TYPE_30__ TYPE_13__ ;
typedef struct TYPE_29__ TYPE_12__ ;
typedef struct TYPE_28__ TYPE_11__ ;
typedef struct TYPE_27__ TYPE_10__ ;


typedef int u32 ;
struct TYPE_40__ {int rz; int ry; int rx; } ;
struct TYPE_33__ {int y; int x; } ;
struct TYPE_34__ {TYPE_16__ pos; } ;
struct TYPE_28__ {int y; int x; } ;
struct TYPE_29__ {TYPE_11__ pos; } ;
struct TYPE_35__ {TYPE_17__ rjs; TYPE_12__ ljs; int ls_raw; int rs_raw; int btns; } ;
struct TYPE_48__ {int y; int x; } ;
struct TYPE_49__ {TYPE_6__ pos; } ;
struct TYPE_44__ {int z; int y; int x; } ;
struct TYPE_50__ {TYPE_7__ js; TYPE_2__ accel; int btns; } ;
struct TYPE_41__ {TYPE_22__ mp; TYPE_18__ classic; TYPE_8__ nunchuk; } ;
struct TYPE_42__ {TYPE_23__ exp; } ;
struct TYPE_38__ {int rz; int ry; int rx; } ;
struct TYPE_30__ {int y; int x; } ;
struct TYPE_31__ {TYPE_13__ pos; } ;
struct TYPE_51__ {int y; int x; } ;
struct TYPE_27__ {TYPE_9__ pos; } ;
struct TYPE_32__ {TYPE_14__ rjs; TYPE_10__ ljs; int ls_raw; int rs_raw; int btns; } ;
struct TYPE_45__ {int y; int x; } ;
struct TYPE_46__ {TYPE_3__ pos; } ;
struct TYPE_37__ {int z; int y; int x; } ;
struct TYPE_47__ {TYPE_4__ js; TYPE_1__ accel; int btns; } ;
struct TYPE_39__ {TYPE_20__ mp; TYPE_15__ classic; TYPE_5__ nunchuk; } ;
struct wiimote_t {TYPE_24__ lstate; TYPE_21__ exp; } ;
struct _wpad_thresh {int mp; int js; int btns; int acc; } ;
struct TYPE_36__ {int type; TYPE_20__ mp; TYPE_15__ classic; TYPE_5__ nunchuk; } ;
struct TYPE_43__ {TYPE_19__ exp; } ;
typedef TYPE_25__ WPADData ;





 int STATE_CHECK (int ,int ,int ) ;
 int STATE_CHECK_SIMPLE (int ,int ,int ) ;

__attribute__((used)) static u32 __wpad_read_expansion(struct wiimote_t *wm,WPADData *data, struct _wpad_thresh *thresh)
{
 int state_changed = 0;
 switch(data->exp.type) {
  case 128:
   data->exp.nunchuk = wm->exp.nunchuk;
   STATE_CHECK_SIMPLE(thresh->btns, wm->exp.nunchuk.btns, wm->lstate.exp.nunchuk.btns);
   STATE_CHECK(thresh->acc, wm->exp.nunchuk.accel.x, wm->lstate.exp.nunchuk.accel.x);
   STATE_CHECK(thresh->acc, wm->exp.nunchuk.accel.y, wm->lstate.exp.nunchuk.accel.y);
   STATE_CHECK(thresh->acc, wm->exp.nunchuk.accel.z, wm->lstate.exp.nunchuk.accel.z);
   STATE_CHECK(thresh->js, wm->exp.nunchuk.js.pos.x, wm->lstate.exp.nunchuk.js.pos.x);
   STATE_CHECK(thresh->js, wm->exp.nunchuk.js.pos.y, wm->lstate.exp.nunchuk.js.pos.y);
   break;
  case 130:
   data->exp.classic = wm->exp.classic;
   STATE_CHECK_SIMPLE(thresh->btns, wm->exp.classic.btns, wm->lstate.exp.classic.btns);
   STATE_CHECK(thresh->js, wm->exp.classic.rs_raw, wm->lstate.exp.classic.rs_raw);
   STATE_CHECK(thresh->js, wm->exp.classic.ls_raw, wm->lstate.exp.classic.ls_raw);
   STATE_CHECK(thresh->js, wm->exp.classic.ljs.pos.x, wm->lstate.exp.classic.ljs.pos.x);
   STATE_CHECK(thresh->js, wm->exp.classic.ljs.pos.y, wm->lstate.exp.classic.ljs.pos.y);
   STATE_CHECK(thresh->js, wm->exp.classic.rjs.pos.x, wm->lstate.exp.classic.rjs.pos.x);
   STATE_CHECK(thresh->js, wm->exp.classic.rjs.pos.y, wm->lstate.exp.classic.rjs.pos.y);
   break;
  case 129:
   data->exp.mp = wm->exp.mp;
   STATE_CHECK(thresh->mp,wm->exp.mp.rx,wm->lstate.exp.mp.rx);
   STATE_CHECK(thresh->mp,wm->exp.mp.ry,wm->lstate.exp.mp.ry);
   STATE_CHECK(thresh->mp,wm->exp.mp.rz,wm->lstate.exp.mp.rz);
   break;
 }
 return state_changed;
}
