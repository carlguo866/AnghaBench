
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tc_frag_data; } ;
typedef TYPE_1__ fragS ;


 int thumb_mode ;

void
arm_init_frag (fragS * fragP)
{

  fragP->tc_frag_data = thumb_mode;
}
