
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_5__ {int CR3; int CR1; int HIRQ; scalar_t__ CR4; scalar_t__ CR2; } ;
struct TYPE_6__ {int status; TYPE_2__ reg; TYPE_1__* filter; } ;
struct TYPE_4__ {int mode; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_ESEL ;
 TYPE_3__* Cs2Area ;

void Cs2GetFilterMode(void) {
  u8 gfmfilternum;

  gfmfilternum = Cs2Area->reg.CR3 >> 8;

  Cs2Area->reg.CR1 = (Cs2Area->status << 8) | Cs2Area->filter[gfmfilternum].mode;
  Cs2Area->reg.CR2 = 0;
  Cs2Area->reg.CR3 = 0;
  Cs2Area->reg.CR4 = 0;
  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_ESEL;
}
