
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le32 ;


 int GENMASK (int,int ) ;
 int le32_get_bits (int ,int ) ;

__attribute__((used)) static inline u32 get_rx_desc_pkt_len(__le32 *__rxdesc)
{
 return le32_get_bits(*__rxdesc, GENMASK(13, 0));
}
