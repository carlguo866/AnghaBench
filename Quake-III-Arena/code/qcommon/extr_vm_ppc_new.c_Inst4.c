
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* buf ;
 size_t compiledOfs ;
 int pass ;
 int printf (char*,unsigned int*,char*,int,int,int,int) ;

__attribute__((used)) static void Inst4( char *opname, int opcode, int destReg, int aReg, int bReg, int cReg ) {
    unsigned r;





    r = opcode | ( destReg << 21 ) | ( aReg << 16 ) | ( bReg << 11 ) | ( cReg << 6 );
    buf[ compiledOfs ] = r;
    compiledOfs++;
}
