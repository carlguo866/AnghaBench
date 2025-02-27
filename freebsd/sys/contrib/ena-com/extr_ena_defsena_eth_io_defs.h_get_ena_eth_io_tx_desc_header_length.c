
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_eth_io_tx_desc {int buff_addr_hi_hdr_sz; } ;


 int ENA_ETH_IO_TX_DESC_HEADER_LENGTH_MASK ;
 int ENA_ETH_IO_TX_DESC_HEADER_LENGTH_SHIFT ;

__attribute__((used)) static inline uint32_t get_ena_eth_io_tx_desc_header_length(const struct ena_eth_io_tx_desc *p)
{
 return (p->buff_addr_hi_hdr_sz & ENA_ETH_IO_TX_DESC_HEADER_LENGTH_MASK) >> ENA_ETH_IO_TX_DESC_HEADER_LENGTH_SHIFT;
}
