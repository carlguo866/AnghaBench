
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct an_softc {int an_dev; scalar_t__ an_gone; } ;


 int AN_CMD_DISABLE ;
 int AN_CMD_ENABLE ;
 int AN_CMD_FORCE_SYNCLOSS ;
 int AN_CMD_FW_RESTART ;
 int AN_CMD_NOOP2 ;
 int AN_LOCK_ASSERT (struct an_softc*) ;
 scalar_t__ ETIMEDOUT ;
 scalar_t__ an_cmd (struct an_softc*,int ,int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
an_reset(struct an_softc *sc)
{
 if (sc->an_gone)
  return;

 AN_LOCK_ASSERT(sc);
 an_cmd(sc, AN_CMD_ENABLE, 0);
 an_cmd(sc, AN_CMD_FW_RESTART, 0);
 an_cmd(sc, AN_CMD_NOOP2, 0);

 if (an_cmd(sc, AN_CMD_FORCE_SYNCLOSS, 0) == ETIMEDOUT)
  device_printf(sc->an_dev, "reset failed\n");

 an_cmd(sc, AN_CMD_DISABLE, 0);

 return;
}
