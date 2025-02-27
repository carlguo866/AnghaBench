
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arswitch_softc {int sc_dev; } ;


 int AR8216 ;
 scalar_t__ AR8X16_IS_SWITCH (struct arswitch_softc*,int ) ;
 int AR8X16_PORT_CPU ;
 int AR8X16_PORT_CTRL_HEADER ;
 int AR8X16_PORT_STS_DUPLEX ;
 int AR8X16_PORT_STS_LINK_AUTO ;
 int AR8X16_PORT_STS_RXFLOW ;
 int AR8X16_PORT_STS_RXMAC ;
 int AR8X16_PORT_STS_SPEED_100 ;
 int AR8X16_PORT_STS_SPEED_1000 ;
 int AR8X16_PORT_STS_TXFLOW ;
 int AR8X16_PORT_STS_TXMAC ;
 int AR8X16_REG_PORT_CTRL (int) ;
 int AR8X16_REG_PORT_STS (int) ;
 int arswitch_readreg (int ,int ) ;
 int arswitch_writereg (int ,int ,int) ;

__attribute__((used)) static void
ar8xxx_port_init(struct arswitch_softc *sc, int port)
{


 if (port == AR8X16_PORT_CPU) {
  arswitch_writereg(sc->sc_dev, AR8X16_REG_PORT_STS(0),
      (AR8X16_IS_SWITCH(sc, AR8216) ?
      AR8X16_PORT_STS_SPEED_100 : AR8X16_PORT_STS_SPEED_1000) |
      (AR8X16_IS_SWITCH(sc, AR8216) ? 0 : AR8X16_PORT_STS_RXFLOW) |
      (AR8X16_IS_SWITCH(sc, AR8216) ? 0 : AR8X16_PORT_STS_TXFLOW) |
      AR8X16_PORT_STS_RXMAC |
      AR8X16_PORT_STS_TXMAC |
      AR8X16_PORT_STS_DUPLEX);
  arswitch_writereg(sc->sc_dev, AR8X16_REG_PORT_CTRL(0),
      arswitch_readreg(sc->sc_dev, AR8X16_REG_PORT_CTRL(0)) &
      ~AR8X16_PORT_CTRL_HEADER);
 } else {

  arswitch_writereg(sc->sc_dev, AR8X16_REG_PORT_STS(port),
      AR8X16_PORT_STS_LINK_AUTO);
  arswitch_writereg(sc->sc_dev, AR8X16_REG_PORT_CTRL(port),
      arswitch_readreg(sc->sc_dev, AR8X16_REG_PORT_CTRL(port)) &
      ~AR8X16_PORT_CTRL_HEADER);
 }
}
