
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef size_t u16 ;
struct mlxsw_item {scalar_t__ element_size; } ;


 char GENMASK (scalar_t__,int ) ;
 size_t __mlxsw_item_bit_array_offset (struct mlxsw_item const*,size_t,char*) ;

__attribute__((used)) static inline void __mlxsw_item_bit_array_set(char *buf,
           const struct mlxsw_item *item,
           u16 index, u8 val)
{
 u8 shift, tmp;
 u16 offset = __mlxsw_item_bit_array_offset(item, index, &shift);
 u8 mask = GENMASK(item->element_size - 1, 0) << shift;

 val <<= shift;
 val &= mask;
 tmp = buf[offset];
 tmp &= ~mask;
 tmp |= val;
 buf[offset] = tmp;
}
