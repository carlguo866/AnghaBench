
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {int dummy; } ;


 int DM9000_IMR ;
 int IMR_PAR ;
 int iow (struct board_info*,int ,int ) ;

__attribute__((used)) static void
dm9000_mask_interrupts(struct board_info *db)
{
 iow(db, DM9000_IMR, IMR_PAR);
}
