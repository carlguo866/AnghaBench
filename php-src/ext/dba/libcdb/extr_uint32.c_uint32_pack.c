
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



void uint32_pack(char *out, uint32 in)
{
 out[0] = in&0xff; in>>=8;
 out[1] = in&0xff; in>>=8;
 out[2] = in&0xff; in>>=8;
 out[3] = in&0xff;
}
