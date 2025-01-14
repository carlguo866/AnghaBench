
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;



void MakeTexture565(const void *src,void *dst,s32 width,s32 height)
{
 register u32 tmp0=0,tmp1=0,tmp2=0,tmp3=0;

 __asm__ __volatile__ (
  "	srwi		%6,%6,2\n"
  "	srwi		%7,%7,2\n"
  "	subi		%3,%4,4\n"
  "	subi		%4,%4,8\n"

  "2:	mtctr		%6\n"
  "	mr			%0,%5\n"

  "1:	lwz			%1,0(%5)\n"
  "	stwu		%1,8(%4)\n"
  "	lwz			%2,4(%5)\n"
  "	stwu		%2,8(%3)\n"

  "	lwz			%1,1024(%5)\n"
  "	stwu		%1,8(%4)\n"
  "	lwz			%2,1028(%5)\n"
  "	stwu		%2,8(%3)\n"

  "	lwz			%1,2048(%5)\n"
  "	stwu		%1,8(%4)\n"
  "	lwz			%2,2052(%5)\n"
  "	stwu		%2,8(%3)\n"

  "	lwz			%1,3072(%5)\n"
  "	stwu		%1,8(%4)\n"
  "	lwz			%2,3076(%5)\n"
  "	stwu		%2,8(%3)\n"

  "	addi		%5,%5,8\n"
  "	bdnz		1b\n"

  "	addi		%5,%0,4096\n"
  "	subic.		%7,%7,1\n"
  "	bne			2b"

  : "=&b"(tmp0), "=&r"(tmp1), "=&r"(tmp2), "=&b"(tmp3)

  : "b"(dst), "b"(src), "r"(width), "r"(height)
  : "memory"
 );
}
