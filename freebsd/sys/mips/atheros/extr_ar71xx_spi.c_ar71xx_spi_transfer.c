
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct spi_command {int tx_cmd_sz; int rx_cmd_sz; int tx_data_sz; int rx_data_sz; scalar_t__ rx_data; scalar_t__ tx_data; scalar_t__ rx_cmd; scalar_t__ tx_cmd; } ;
struct ar71xx_spi_softc {int dummy; } ;
typedef int device_t ;


 int KASSERT (int,char*) ;
 int SPIBUS_CS_HIGH ;
 int ar71xx_spi_chip_activate (struct ar71xx_spi_softc*,int ) ;
 int ar71xx_spi_chip_deactivate (struct ar71xx_spi_softc*,int ) ;
 int ar71xx_spi_txrx (struct ar71xx_spi_softc*,int ,int ) ;
 struct ar71xx_spi_softc* device_get_softc (int ) ;
 int spibus_get_cs (int ,int *) ;

__attribute__((used)) static int
ar71xx_spi_transfer(device_t dev, device_t child, struct spi_command *cmd)
{
 struct ar71xx_spi_softc *sc;
 uint32_t cs;
 uint8_t *buf_in, *buf_out;
 int i;

 sc = device_get_softc(dev);

 spibus_get_cs(child, &cs);

 cs &= ~SPIBUS_CS_HIGH;

 ar71xx_spi_chip_activate(sc, cs);

 KASSERT(cmd->tx_cmd_sz == cmd->rx_cmd_sz,
     ("TX/RX command sizes should be equal"));
 KASSERT(cmd->tx_data_sz == cmd->rx_data_sz,
     ("TX/RX data sizes should be equal"));




 buf_out = (uint8_t *)cmd->tx_cmd;
 buf_in = (uint8_t *)cmd->rx_cmd;
 for (i = 0; i < cmd->tx_cmd_sz; i++)
  buf_in[i] = ar71xx_spi_txrx(sc, cs, buf_out[i]);




 buf_out = (uint8_t *)cmd->tx_data;
 buf_in = (uint8_t *)cmd->rx_data;
 for (i = 0; i < cmd->tx_data_sz; i++)
  buf_in[i] = ar71xx_spi_txrx(sc, cs, buf_out[i]);

 ar71xx_spi_chip_deactivate(sc, cs);

 return (0);
}
