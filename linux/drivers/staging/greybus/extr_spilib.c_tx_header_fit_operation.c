
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gb_spi_transfer_request {int dummy; } ;
struct gb_spi_transfer {int dummy; } ;



__attribute__((used)) static int tx_header_fit_operation(u32 tx_size, u32 count, size_t data_max)
{
 size_t headers_size;

 data_max -= sizeof(struct gb_spi_transfer_request);
 headers_size = (count + 1) * sizeof(struct gb_spi_transfer);

 return tx_size + headers_size > data_max ? 0 : 1;
}
