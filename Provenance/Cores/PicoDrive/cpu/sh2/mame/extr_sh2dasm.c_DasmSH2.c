
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int UINT16 ;


 int op0000 (char*,unsigned int,int) ;
 int op0001 (char*,unsigned int,int) ;
 int op0010 (char*,unsigned int,int) ;
 int op0011 (char*,unsigned int,int) ;
 int op0100 (char*,unsigned int,int) ;
 int op0101 (char*,unsigned int,int) ;
 int op0110 (char*,unsigned int,int) ;
 int op0111 (char*,unsigned int,int) ;
 int op1000 (char*,unsigned int,int) ;
 int op1001 (char*,unsigned int,int) ;
 int op1010 (char*,unsigned int,int) ;
 int op1011 (char*,unsigned int,int) ;
 int op1100 (char*,unsigned int,int) ;
 int op1101 (char*,unsigned int,int) ;
 int op1110 (char*,unsigned int,int) ;
 int op1111 (char*,unsigned int,int) ;

unsigned DasmSH2(char *buffer, unsigned pc, UINT16 opcode)
{
 UINT32 flags;

 pc += 2;

 switch((opcode >> 12) & 15)
 {
 case 0: flags = op0000(buffer,pc,opcode); break;
 case 1: flags = op0001(buffer,pc,opcode); break;
 case 2: flags = op0010(buffer,pc,opcode); break;
 case 3: flags = op0011(buffer,pc,opcode); break;
 case 4: flags = op0100(buffer,pc,opcode); break;
 case 5: flags = op0101(buffer,pc,opcode); break;
 case 6: flags = op0110(buffer,pc,opcode); break;
 case 7: flags = op0111(buffer,pc,opcode); break;
 case 8: flags = op1000(buffer,pc,opcode); break;
 case 9: flags = op1001(buffer,pc,opcode); break;
 case 10: flags = op1010(buffer,pc,opcode); break;
 case 11: flags = op1011(buffer,pc,opcode); break;
 case 12: flags = op1100(buffer,pc,opcode); break;
 case 13: flags = op1101(buffer,pc,opcode); break;
 case 14: flags = op1110(buffer,pc,opcode); break;
 default: flags = op1111(buffer,pc,opcode); break;
 }
 return 0;
}
