
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PC_CKS_LOC ;
 int PC_CKS_RANGE_END ;
 int PC_CKS_RANGE_START ;
 scalar_t__ __nvram_read_byte (int) ;
 int __nvram_write_byte (unsigned short,scalar_t__) ;

__attribute__((used)) static void pc_set_checksum(void)
{
 int i;
 unsigned short sum = 0;

 for (i = PC_CKS_RANGE_START; i <= PC_CKS_RANGE_END; ++i)
  sum += __nvram_read_byte(i);
 __nvram_write_byte(sum >> 8, PC_CKS_LOC);
 __nvram_write_byte(sum & 0xff, PC_CKS_LOC + 1);
}
