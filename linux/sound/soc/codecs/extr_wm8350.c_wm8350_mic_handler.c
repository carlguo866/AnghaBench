
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int short_report; int report; int jack; } ;
struct wm8350_data {TYPE_1__ mic; struct wm8350* wm8350; } ;
struct wm8350 {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int WM8350_JACK_MICSCD_LVL ;
 int WM8350_JACK_MICSD_LVL ;
 int WM8350_JACK_PIN_STATUS ;
 int snd_soc_jack_report (int ,int,int) ;
 int trace_snd_soc_jack_irq (char*) ;
 int wm8350_reg_read (struct wm8350*,int ) ;

__attribute__((used)) static irqreturn_t wm8350_mic_handler(int irq, void *data)
{
 struct wm8350_data *priv = data;
 struct wm8350 *wm8350 = priv->wm8350;
 u16 reg;
 int report = 0;


 trace_snd_soc_jack_irq("WM8350 mic");


 reg = wm8350_reg_read(wm8350, WM8350_JACK_PIN_STATUS);
 if (reg & WM8350_JACK_MICSCD_LVL)
  report |= priv->mic.short_report;
 if (reg & WM8350_JACK_MICSD_LVL)
  report |= priv->mic.report;

 snd_soc_jack_report(priv->mic.jack, report,
       priv->mic.report | priv->mic.short_report);

 return IRQ_HANDLED;
}
