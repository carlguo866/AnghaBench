
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct brcms_c_info {scalar_t__ home_chanspec; TYPE_2__* bsscfg; } ;
struct TYPE_4__ {TYPE_1__* current_bss; scalar_t__ associated; } ;
struct TYPE_3__ {scalar_t__ chanspec; } ;



__attribute__((used)) static void brcms_c_set_home_chanspec(struct brcms_c_info *wlc, u16 chanspec)
{
 if (wlc->home_chanspec != chanspec) {
  wlc->home_chanspec = chanspec;

  if (wlc->bsscfg->associated)
   wlc->bsscfg->current_bss->chanspec = chanspec;
 }
}
