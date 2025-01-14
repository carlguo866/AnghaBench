
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
struct spi_command {size_t rx_cmd_sz; scalar_t__ rx_data; scalar_t__ rx_cmd; } ;
struct fsl_espi_softc {scalar_t__ sc_read; scalar_t__ sc_len; struct spi_command* sc_cmd; } ;


 int ESPI_SPIE ;
 size_t ESPI_SPIE_RNE ;
 int ESPI_SPIRF ;
 size_t FSL_ESPI_READ (struct fsl_espi_softc*,int ) ;
 int FSL_ESPI_READ_FIFO (struct fsl_espi_softc*,int ) ;

__attribute__((used)) static void
fsl_espi_drain_fifo(struct fsl_espi_softc *sc)
{
 struct spi_command *cmd;
 uint32_t spier, read;
 uint8_t *data;
 uint8_t r;

 cmd = sc->sc_cmd;
 spier = FSL_ESPI_READ(sc, ESPI_SPIE);
 while (sc->sc_read < sc->sc_len && (spier & ESPI_SPIE_RNE)) {
  data = (uint8_t *)cmd->rx_cmd;
  read = sc->sc_read++;
  if (read >= cmd->rx_cmd_sz) {
   data = (uint8_t *)cmd->rx_data;
   read -= cmd->rx_cmd_sz;
  }
  r = FSL_ESPI_READ_FIFO(sc, ESPI_SPIRF);
  data[read] = r;
  spier = FSL_ESPI_READ(sc, ESPI_SPIE);
 }
}
