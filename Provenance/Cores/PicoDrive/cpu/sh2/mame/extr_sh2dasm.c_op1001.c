
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int UINT16 ;


 size_t Rn ;
 char** regname ;
 int sprintf (char*,char*,int,char*,int) ;

__attribute__((used)) static UINT32 op1001(char *buffer, UINT32 pc, UINT16 opcode)
{
 sprintf(buffer, "MOV.W   @($%02X,PC),%s  ; @$%08x", (opcode & 0xff) * 2, regname[Rn],
  pc + (opcode & 0xff) * 2 + 2);
 return 0;
}
