
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct prpmc2800_board_info {int subsys0; int subsys1; int vpd4_mask; int vpd4; } ;


 int ARRAY_SIZE (struct prpmc2800_board_info*) ;
 struct prpmc2800_board_info* prpmc2800_board_info ;

__attribute__((used)) static struct prpmc2800_board_info *prpmc2800_get_board_info(u8 *vpd)
{
 struct prpmc2800_board_info *bip;
 int i;

 for (i=0,bip=prpmc2800_board_info; i<ARRAY_SIZE(prpmc2800_board_info);
   i++,bip++)
  if ((vpd[0] == bip->subsys0) && (vpd[1] == bip->subsys1)
    && ((vpd[4] & bip->vpd4_mask) == bip->vpd4))
   return bip;

 return ((void*)0);
}
