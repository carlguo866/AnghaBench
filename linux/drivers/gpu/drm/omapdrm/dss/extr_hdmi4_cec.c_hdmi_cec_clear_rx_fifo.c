
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_core_data {int base; } ;
struct cec_adapter {int dummy; } ;


 scalar_t__ FLD_GET (int,int,int ) ;
 int HDMI_CEC_RX_CONTROL ;
 int HDMI_CORE_CEC_RETRY ;
 struct hdmi_core_data* cec_get_drvdata (struct cec_adapter*) ;
 int hdmi_read_reg (int ,int ) ;
 int hdmi_write_reg (int ,int ,int) ;

__attribute__((used)) static bool hdmi_cec_clear_rx_fifo(struct cec_adapter *adap)
{
 struct hdmi_core_data *core = cec_get_drvdata(adap);
 int retry = HDMI_CORE_CEC_RETRY;
 int temp;

 hdmi_write_reg(core->base, HDMI_CEC_RX_CONTROL, 0x3);
 retry = HDMI_CORE_CEC_RETRY;
 while (retry) {
  temp = hdmi_read_reg(core->base, HDMI_CEC_RX_CONTROL);
  if (FLD_GET(temp, 1, 0) == 0)
   break;
  retry--;
 }
 return retry != 0;
}
