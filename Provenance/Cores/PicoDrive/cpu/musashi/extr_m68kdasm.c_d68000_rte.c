
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DASMFLAG_STEP_OUT ;
 int SET_OPCODE_FLAGS (int ) ;
 int g_dasm_str ;
 int sprintf (int ,char*) ;

__attribute__((used)) static void d68000_rte(void)
{
 sprintf(g_dasm_str, "rte");
 SET_OPCODE_FLAGS(DASMFLAG_STEP_OUT);
}
