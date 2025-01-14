
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int ut32 ;
struct TYPE_2__ {int addr; int cur_val; int min_val; } ;


 TYPE_1__ SWITCH_OP ;
 scalar_t__ UINT (int const*,int ) ;
 int snprintf (char*,int,char*,int,int) ;
 int update_bytes_consumed (int) ;
 int update_switch_op (int ,int const*) ;

__attribute__((used)) static int handle_switch_op (ut64 addr, const ut8 * bytes, char *output, int outlen ) {
 int sz = 4;
 ut32 jmp = (int)(UINT (bytes, 0)) + SWITCH_OP.addr;
 int ccase = SWITCH_OP.cur_val + SWITCH_OP.min_val;
 snprintf (output, outlen, "case %d: goto 0x%04x", ccase, jmp);
 update_switch_op (addr, bytes);
 return update_bytes_consumed (sz);
}
