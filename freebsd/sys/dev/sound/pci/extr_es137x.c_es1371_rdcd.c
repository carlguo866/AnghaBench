
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct es_info {int dummy; } ;
typedef int kobj_t ;


 int CODEC_PIDAT_MASK ;
 int CODEC_PIDAT_SHIFT ;
 int CODEC_POADD_MASK ;
 int CODEC_POADD_SHIFT ;
 int CODEC_PORD ;
 int CODEC_RDY ;
 int CODEC_WIP ;
 int ES1371_DIS_P1 ;
 int ES1371_DIS_P2 ;
 int ES1371_DIS_R1 ;
 int ES1371_DIS_SRC ;
 int ES1371_REG_CODEC ;
 int ES1371_REG_SMPRATE ;
 int es1371_wait_src_ready (void*) ;
 int es_rd (struct es_info*,int ,int) ;
 int es_wr (struct es_info*,int ,int,int) ;

__attribute__((used)) static int
es1371_rdcd(kobj_t obj, void *s, int addr)
{
   uint32_t t, x, orig;
   struct es_info *es = (struct es_info *)s;

   for (t = 0; t < 0x1000; t++) {
  if (!(x = es_rd(es, ES1371_REG_CODEC, 4) & CODEC_WIP))
     break;
 }


   x = orig = es_rd(es, ES1371_REG_SMPRATE, 4);

   es_wr(es, ES1371_REG_SMPRATE, (x & (ES1371_DIS_SRC | ES1371_DIS_P1 |
     ES1371_DIS_P2 | ES1371_DIS_R1)) | 0x00010000, 4);

   for (t = 0; t < 0x1000; t++) {
  if ((x = es_rd(es, ES1371_REG_SMPRATE, 4) & 0x00870000) ==
      0x00000000)
     break;
 }

   for (t = 0; t < 0x1000; t++) {
  if ((x = es_rd(es, ES1371_REG_SMPRATE, 4) & 0x00870000) ==
      0x00010000)
     break;
 }

   es_wr(es, ES1371_REG_CODEC, ((addr << CODEC_POADD_SHIFT) &
     CODEC_POADD_MASK) | CODEC_PORD, 4);


   es1371_wait_src_ready(s);
   es_wr(es, ES1371_REG_SMPRATE, orig, 4);


   for (t = 0; t < 0x1000; t++) {
  if ((x = es_rd(es, ES1371_REG_CODEC, 4)) & CODEC_RDY)
     break;
 }

   return ((x & CODEC_PIDAT_MASK) >> CODEC_PIDAT_SHIFT);
}
