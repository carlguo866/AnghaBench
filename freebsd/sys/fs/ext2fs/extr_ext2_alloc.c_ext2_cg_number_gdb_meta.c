
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct m_ext2fs {int dummy; } ;


 int EXT2_DESCS_PER_BLOCK (struct m_ext2fs*) ;

__attribute__((used)) static uint64_t
ext2_cg_number_gdb_meta(struct m_ext2fs *fs, int cg)
{
 unsigned long metagroup;
 int first, last;

 metagroup = cg / EXT2_DESCS_PER_BLOCK(fs);
 first = metagroup * EXT2_DESCS_PER_BLOCK(fs);
 last = first + EXT2_DESCS_PER_BLOCK(fs) - 1;

 if (cg == first || cg == first + 1 || cg == last)
  return (1);

 return (0);
}
