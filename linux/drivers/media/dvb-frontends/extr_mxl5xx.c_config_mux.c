
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl {int dummy; } ;


 int update_by_mnemonic (struct mxl*,int,int,int,int) ;

__attribute__((used)) static int config_mux(struct mxl *state)
{
 update_by_mnemonic(state, 0x9070000C, 0, 1, 0);
 update_by_mnemonic(state, 0x9070000C, 1, 1, 0);
 update_by_mnemonic(state, 0x9070000C, 2, 1, 0);
 update_by_mnemonic(state, 0x9070000C, 3, 1, 0);
 update_by_mnemonic(state, 0x9070000C, 4, 1, 0);
 update_by_mnemonic(state, 0x9070000C, 5, 1, 0);
 update_by_mnemonic(state, 0x9070000C, 6, 1, 0);
 update_by_mnemonic(state, 0x9070000C, 7, 1, 0);
 update_by_mnemonic(state, 0x90700008, 0, 2, 1);
 update_by_mnemonic(state, 0x90700008, 2, 2, 1);
 return 0;
}
