
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int uint32_t ;
struct csrtext {int crc_len; int * text; } ;
struct csrreg {scalar_t__ key; int val; } ;
struct crom_context {scalar_t__ depth; } ;


 scalar_t__ CROM_END (struct crom_context*) ;
 scalar_t__ CROM_TEXTLEAF ;
 struct csrreg* crom_get (struct crom_context*) ;
 int ntohl (int ) ;
 int strncpy (char*,char*,int) ;

void
crom_parse_text(struct crom_context *cc, char *buf, int len)
{
 struct csrreg *reg;
 struct csrtext *textleaf;
 uint32_t *bp;
 int i, qlen;
 static char *nullstr = "(null)";

 if (cc->depth < 0)
  return;

 reg = crom_get(cc);
 if (reg->key != CROM_TEXTLEAF ||
     (vm_offset_t)(reg + reg->val) > CROM_END(cc)) {
  strncpy(buf, nullstr, len);
  return;
 }
 textleaf = (struct csrtext *)(reg + reg->val);

 if ((vm_offset_t)textleaf + textleaf->crc_len > CROM_END(cc)) {
  strncpy(buf, nullstr, len);
  return;
 }



 bp = (uint32_t *)&buf[0];
 qlen = textleaf->crc_len - 2;
 if (len < qlen * 4)
  qlen = len/4;
 for (i = 0; i < qlen; i++)
  *bp++ = ntohl(textleaf->text[i]);

 if (len <= qlen * 4)
  buf[len - 1] = 0;
 else
  buf[qlen * 4] = 0;
}
