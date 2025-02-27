
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long long transport_lba_64(unsigned char *cdb)
{
 unsigned int __v1, __v2;

 __v1 = (cdb[2] << 24) | (cdb[3] << 16) | (cdb[4] << 8) | cdb[5];
 __v2 = (cdb[6] << 24) | (cdb[7] << 16) | (cdb[8] << 8) | cdb[9];

 return ((unsigned long long)__v2) | (unsigned long long)__v1 << 32;
}
