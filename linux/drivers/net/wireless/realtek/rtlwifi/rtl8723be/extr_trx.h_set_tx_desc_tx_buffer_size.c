
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le32 ;


 int GENMASK (int,int ) ;
 int le32p_replace_bits (int *,int ,int ) ;

__attribute__((used)) static inline void set_tx_desc_tx_buffer_size(__le32 *__pdesc, u32 __val)
{
 le32p_replace_bits((__pdesc + 7), __val, GENMASK(15, 0));
}
