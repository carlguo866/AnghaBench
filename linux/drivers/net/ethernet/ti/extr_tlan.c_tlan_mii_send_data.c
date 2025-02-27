
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;


 scalar_t__ TLAN_DIO_ADR ;
 scalar_t__ TLAN_DIO_DATA ;
 scalar_t__ TLAN_NET_SIO ;
 int TLAN_NET_SIO_MCLK ;
 int TLAN_NET_SIO_MDATA ;
 int TLAN_NET_SIO_MTXEN ;
 int outw (scalar_t__,scalar_t__) ;
 int tlan_clear_bit (int ,scalar_t__) ;
 int tlan_get_bit (int ,scalar_t__) ;
 int tlan_set_bit (int ,scalar_t__) ;

__attribute__((used)) static void tlan_mii_send_data(u16 base_port, u32 data, unsigned num_bits)
{
 u16 sio;
 u32 i;

 if (num_bits == 0)
  return;

 outw(TLAN_NET_SIO, base_port + TLAN_DIO_ADR);
 sio = base_port + TLAN_DIO_DATA + TLAN_NET_SIO;
 tlan_set_bit(TLAN_NET_SIO_MTXEN, sio);

 for (i = (0x1 << (num_bits - 1)); i; i >>= 1) {
  tlan_clear_bit(TLAN_NET_SIO_MCLK, sio);
  (void) tlan_get_bit(TLAN_NET_SIO_MCLK, sio);
  if (data & i)
   tlan_set_bit(TLAN_NET_SIO_MDATA, sio);
  else
   tlan_clear_bit(TLAN_NET_SIO_MDATA, sio);
  tlan_set_bit(TLAN_NET_SIO_MCLK, sio);
  (void) tlan_get_bit(TLAN_NET_SIO_MCLK, sio);
 }

}
