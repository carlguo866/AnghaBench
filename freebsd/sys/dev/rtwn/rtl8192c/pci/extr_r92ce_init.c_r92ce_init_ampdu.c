
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R92C_AGGLEN_LMT ;
 int R92C_AGGR_BREAK_TIME ;
 int rtwn_write_1 (struct rtwn_softc*,int ,int) ;
 int rtwn_write_4 (struct rtwn_softc*,int ,int) ;

void
r92ce_init_ampdu(struct rtwn_softc *sc)
{


 rtwn_write_4(sc, R92C_AGGLEN_LMT, 0x99997631);
 rtwn_write_1(sc, R92C_AGGR_BREAK_TIME, 0x16);
}
