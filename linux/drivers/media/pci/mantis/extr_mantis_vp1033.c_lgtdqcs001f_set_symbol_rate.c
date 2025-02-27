
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dvb_frontend {int dummy; } ;


 int stv0299_writereg (struct dvb_frontend*,int,int) ;

__attribute__((used)) static int lgtdqcs001f_set_symbol_rate(struct dvb_frontend *fe,
           u32 srate, u32 ratio)
{
 u8 aclk = 0;
 u8 bclk = 0;

 if (srate < 1500000) {
  aclk = 0xb7;
  bclk = 0x47;
 } else if (srate < 3000000) {
  aclk = 0xb7;
  bclk = 0x4b;
 } else if (srate < 7000000) {
  aclk = 0xb7;
  bclk = 0x4f;
 } else if (srate < 14000000) {
  aclk = 0xb7;
  bclk = 0x53;
 } else if (srate < 30000000) {
  aclk = 0xb6;
  bclk = 0x53;
 } else if (srate < 45000000) {
  aclk = 0xb4;
  bclk = 0x51;
 }
 stv0299_writereg(fe, 0x13, aclk);
 stv0299_writereg(fe, 0x14, bclk);

 stv0299_writereg(fe, 0x1f, (ratio >> 16) & 0xff);
 stv0299_writereg(fe, 0x20, (ratio >> 8) & 0xff);
 stv0299_writereg(fe, 0x21, ratio & 0xf0);

 return 0;
}
