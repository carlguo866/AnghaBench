
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_u32_list ;
typedef int errcode_t ;


 int make_u32_list (int,int ,int ,int *) ;

errcode_t ext2fs_u32_list_create(ext2_u32_list *ret, int size)
{
 return make_u32_list(size, 0, 0, ret);
}
