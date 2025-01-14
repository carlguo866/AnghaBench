
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ufs2_daddr_t ;
struct jextent {scalar_t__ je_daddr; int je_blocks; } ;
struct jblocks {size_t jb_used; int jb_avail; struct jextent* jb_extent; } ;


 int bcopy (struct jextent*,struct jextent*,int) ;
 int bzero (struct jextent*,int) ;
 struct jextent* errmalloc (int) ;
 int free (struct jextent*) ;

__attribute__((used)) static void
jblocks_add(struct jblocks *jblocks, ufs2_daddr_t daddr, int blocks)
{
 struct jextent *jext;
 int size;

 jext = &jblocks->jb_extent[jblocks->jb_used];

 if (jext->je_daddr == 0) {
  jext->je_daddr = daddr;
  jext->je_blocks = blocks;
  return;
 }

 if (jext->je_daddr + jext->je_blocks == daddr) {
  jext->je_blocks += blocks;
  return;
 }

 if (++jblocks->jb_used == jblocks->jb_avail) {
  jblocks->jb_avail *= 2;
  size = sizeof(struct jextent) * jblocks->jb_avail;
  jext = errmalloc(size);
  bzero(jext, size);
  bcopy(jblocks->jb_extent, jext,
      sizeof(struct jextent) * jblocks->jb_used);
  free(jblocks->jb_extent);
  jblocks->jb_extent = jext;
 }
 jext = &jblocks->jb_extent[jblocks->jb_used];
 jext->je_daddr = daddr;
 jext->je_blocks = blocks;

 return;
}
