
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pcminfo {struct sc_info* sc; } ;
struct sc_info {int dummy; } ;
struct sc_chinfo {scalar_t__ dir; int run; int lslot; int rslot; struct sc_pcminfo* parent; } ;


 int HDSPE_IN_ENABLE_BASE ;
 int HDSPE_OUT_ENABLE_BASE ;
 scalar_t__ PCMDIR_PLAY ;
 int hdspe_write_1 (struct sc_info*,int,int) ;

__attribute__((used)) static void
hdspechan_enable(struct sc_chinfo *ch, int value)
{
 struct sc_pcminfo *scp;
 struct sc_info *sc;
 int reg;

 scp = ch->parent;
 sc = scp->sc;

 if (ch->dir == PCMDIR_PLAY)
  reg = HDSPE_OUT_ENABLE_BASE;
 else
  reg = HDSPE_IN_ENABLE_BASE;

 ch->run = value;

 hdspe_write_1(sc, reg + (4 * ch->lslot), value);
 hdspe_write_1(sc, reg + (4 * ch->rslot), value);
}
