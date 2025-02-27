
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;


 int NI_M_CDIO_CMD_REG ;
 int NI_M_CDO_CMD_DISARM ;
 int NI_M_CDO_CMD_ERR_INT_ENA_CLR ;
 int NI_M_CDO_CMD_F_E_INT_ENA_CLR ;
 int NI_M_CDO_CMD_F_REQ_INT_ENA_CLR ;
 int NI_M_CDO_MASK_ENA_REG ;
 int ni_release_cdo_mite_channel (struct comedi_device*) ;
 int ni_writel (struct comedi_device*,int,int ) ;

__attribute__((used)) static int ni_cdio_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 ni_writel(dev, NI_M_CDO_CMD_DISARM |
         NI_M_CDO_CMD_ERR_INT_ENA_CLR |
         NI_M_CDO_CMD_F_E_INT_ENA_CLR |
         NI_M_CDO_CMD_F_REQ_INT_ENA_CLR,
    NI_M_CDIO_CMD_REG);




 ni_writel(dev, 0, NI_M_CDO_MASK_ENA_REG);
 ni_release_cdo_mite_channel(dev);
 return 0;
}
