
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct es_info {scalar_t__ polling; int sctrl; TYPE_1__* ch; } ;
struct TYPE_2__ {int channel; } ;


 int ES1370_REG_SERIAL_CONTROL ;
 int ES1370_REG_STATUS ;
 size_t ES_ADC ;
 size_t ES_DAC1 ;
 size_t ES_DAC2 ;
 int ES_LOCK (struct es_info*) ;
 int ES_UNLOCK (struct es_info*) ;
 int SCTRL_P1INTEN ;
 int SCTRL_P2INTEN ;
 int SCTRL_R1INTEN ;
 int STAT_ADC ;
 int STAT_DAC1 ;
 int STAT_DAC2 ;
 int STAT_INTR ;
 int chn_intr (int ) ;
 int es_rd (struct es_info*,int ,int) ;
 int es_wr (struct es_info*,int ,int,int) ;

__attribute__((used)) static void
es_intr(void *p)
{
 struct es_info *es = p;
 uint32_t intsrc, sctrl;

 ES_LOCK(es);
 if (es->polling != 0) {
  ES_UNLOCK(es);
  return;
 }
 intsrc = es_rd(es, ES1370_REG_STATUS, 4);
 if ((intsrc & STAT_INTR) == 0) {
  ES_UNLOCK(es);
  return;
 }

 sctrl = es->sctrl;
 if (intsrc & STAT_ADC)
  sctrl &= ~SCTRL_R1INTEN;
 if (intsrc & STAT_DAC1)
  sctrl &= ~SCTRL_P1INTEN;
 if (intsrc & STAT_DAC2)
  sctrl &= ~SCTRL_P2INTEN;

 es_wr(es, ES1370_REG_SERIAL_CONTROL, sctrl, 4);
 es_wr(es, ES1370_REG_SERIAL_CONTROL, es->sctrl, 4);
 ES_UNLOCK(es);

 if (intsrc & STAT_ADC)
  chn_intr(es->ch[ES_ADC].channel);
 if (intsrc & STAT_DAC1)
  chn_intr(es->ch[ES_DAC1].channel);
 if (intsrc & STAT_DAC2)
  chn_intr(es->ch[ES_DAC2].channel);
}
