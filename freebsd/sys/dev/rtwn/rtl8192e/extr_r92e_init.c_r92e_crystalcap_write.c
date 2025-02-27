
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rtwn_softc {struct r92e_softc* sc_priv; } ;
struct r92e_softc {int crystalcap; } ;


 int R92C_AFE_XTAL_CTRL ;
 int R92E_AFE_XTAL_CTRL ;
 int R92E_AFE_XTAL_CTRL_ADDR ;
 int RW (int ,int ,int) ;
 int rtwn_bb_read (struct rtwn_softc*,int ) ;
 int rtwn_bb_write (struct rtwn_softc*,int ,int) ;

__attribute__((used)) static void
r92e_crystalcap_write(struct rtwn_softc *sc)
{
 struct r92e_softc *rs = sc->sc_priv;
 uint32_t reg;
 uint8_t val;

 val = rs->crystalcap & 0x3f;
 reg = rtwn_bb_read(sc, R92E_AFE_XTAL_CTRL);
 rtwn_bb_write(sc, R92E_AFE_XTAL_CTRL,
     RW(reg, R92E_AFE_XTAL_CTRL_ADDR, val | val << 6));
 rtwn_bb_write(sc, R92C_AFE_XTAL_CTRL, 0x000f81fb);
}
