
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs {int fs_frag; } ;


 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static int
isblock(struct fs *fs, unsigned char *cp, int h)
{
 unsigned char mask;

 switch (fs->fs_frag) {
 case 8:
  return (cp[h] == 0xff);
 case 4:
  mask = 0x0f << ((h & 0x1) << 2);
  return ((cp[h >> 1] & mask) == mask);
 case 2:
  mask = 0x03 << ((h & 0x3) << 1);
  return ((cp[h >> 2] & mask) == mask);
 case 1:
  mask = 0x01 << (h & 0x7);
  return ((cp[h >> 3] & mask) == mask);
 default:
  fprintf(stderr, "isblock bad fs_frag %d\n", fs->fs_frag);
  return (0);
 }
}
