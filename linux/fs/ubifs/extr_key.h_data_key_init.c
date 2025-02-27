
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ubifs_key {unsigned int* u32; } ;
struct ubifs_info {int dummy; } ;
typedef unsigned int ino_t ;


 unsigned int UBIFS_DATA_KEY ;
 unsigned int UBIFS_S_KEY_BLOCK_BITS ;
 unsigned int UBIFS_S_KEY_BLOCK_MASK ;
 int ubifs_assert (struct ubifs_info const*,int) ;

__attribute__((used)) static inline void data_key_init(const struct ubifs_info *c,
     union ubifs_key *key, ino_t inum,
     unsigned int block)
{
 ubifs_assert(c, !(block & ~UBIFS_S_KEY_BLOCK_MASK));
 key->u32[0] = inum;
 key->u32[1] = block | (UBIFS_DATA_KEY << UBIFS_S_KEY_BLOCK_BITS);
}
