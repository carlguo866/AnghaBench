
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct go7007 {scalar_t__ ipb; } ;
typedef scalar_t__ __le16 ;


 int BFRAME_BIDIR ;
 int BFRAME_EMPTY ;
 int BFRAME_POST ;
 int BFRAME_PRE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PFRAME ;
 scalar_t__ __cpu_to_le16 (int) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int memcpy (scalar_t__*,int *,int) ;
 int memset (int *,int ,int) ;
 int mpeg4_frame_header (struct go7007*,int *,int,int ) ;
 int mpeg4_sequence_header (struct go7007*,int *,int ) ;

__attribute__((used)) static int gen_mpeg4hdr_to_package(struct go7007 *go,
     __le16 *code, int space, int *framelen)
{
 u8 *buf;
 u16 mem = 0x3e00;
 unsigned int addr = 0x19;
 int i, off = 0, chunk;

 buf = kzalloc(5120, GFP_KERNEL);
 if (buf == ((void*)0))
  return -ENOMEM;

 framelen[0] = mpeg4_frame_header(go, buf, 0, PFRAME);
 i = 368;
 framelen[1] = mpeg4_frame_header(go, buf + i, 0, BFRAME_PRE);
 i += 1632;
 framelen[2] = mpeg4_frame_header(go, buf + i, 0, BFRAME_POST);
 i += 1432;
 framelen[3] = mpeg4_frame_header(go, buf + i, 0, BFRAME_BIDIR);
 i += 1632;
 mpeg4_frame_header(go, buf + i, 0, BFRAME_EMPTY);
 i += 16;
 mpeg4_sequence_header(go, buf + i, 0);
 i += 40;
 for (i = 0; i < 5120; i += chunk * 2) {
  if (space - off < 32) {
   off = -1;
   goto done;
  }

  code[off + 1] = __cpu_to_le16(0x8000 | mem);

  chunk = 28;
  if (mem + chunk > 0x4000)
   chunk = 0x4000 - mem;
  if (i + 2 * chunk > 5120)
   chunk = (5120 - i) / 2;

  if (chunk < 28) {
   code[off] = __cpu_to_le16(0x4000 | chunk);
   code[off + 31] = __cpu_to_le16(addr);
   if (mem + chunk == 0x4000) {
    mem = 0x3e00;
    ++addr;
   }
  } else {
   code[off] = __cpu_to_le16(0x1000 | 28);
   code[off + 31] = 0;
   mem += 28;
  }

  memcpy(&code[off + 2], buf + i, chunk * 2);
  off += 32;
 }
 mem = 0x3e00;
 addr = go->ipb ? 0x14f9 : 0x0af9;
 memset(buf, 0, 5120);
 framelen[4] = mpeg4_frame_header(go, buf, 1, PFRAME);
 i = 368;
 framelen[5] = mpeg4_frame_header(go, buf + i, 1, BFRAME_PRE);
 i += 1632;
 framelen[6] = mpeg4_frame_header(go, buf + i, 1, BFRAME_POST);
 i += 1432;
 framelen[7] = mpeg4_frame_header(go, buf + i, 1, BFRAME_BIDIR);
 i += 1632;
 mpeg4_frame_header(go, buf + i, 1, BFRAME_EMPTY);
 i += 16;
 for (i = 0; i < 5120; i += chunk * 2) {
  if (space - off < 32) {
   off = -1;
   goto done;
  }

  code[off + 1] = __cpu_to_le16(0x8000 | mem);

  chunk = 28;
  if (mem + chunk > 0x4000)
   chunk = 0x4000 - mem;
  if (i + 2 * chunk > 5120)
   chunk = (5120 - i) / 2;

  if (chunk < 28) {
   code[off] = __cpu_to_le16(0x4000 | chunk);
   code[off + 31] = __cpu_to_le16(addr);
   if (mem + chunk == 0x4000) {
    mem = 0x3e00;
    ++addr;
   }
  } else {
   code[off] = __cpu_to_le16(0x1000 | 28);
   code[off + 31] = 0;
   mem += 28;
  }

  memcpy(&code[off + 2], buf + i, chunk * 2);
  off += 32;
 }
done:
 kfree(buf);
 return off;
}
