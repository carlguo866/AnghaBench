
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct cec_gpio {char* cec_irq; scalar_t__ v5_is_high; scalar_t__ v5_gpio; scalar_t__ hpd_is_high; scalar_t__ hpd_gpio; scalar_t__ cec_is_low; } ;
struct cec_adapter {int dummy; } ;


 struct cec_gpio* cec_get_drvdata (struct cec_adapter*) ;
 int seq_printf (struct seq_file*,char*,char*) ;

__attribute__((used)) static void cec_gpio_status(struct cec_adapter *adap, struct seq_file *file)
{
 struct cec_gpio *cec = cec_get_drvdata(adap);

 seq_printf(file, "mode: %s\n", cec->cec_is_low ? "low-drive" : "read");
 seq_printf(file, "using irq: %d\n", cec->cec_irq);
 if (cec->hpd_gpio)
  seq_printf(file, "hpd: %s\n",
      cec->hpd_is_high ? "high" : "low");
 if (cec->v5_gpio)
  seq_printf(file, "5V: %s\n",
      cec->v5_is_high ? "high" : "low");
}
