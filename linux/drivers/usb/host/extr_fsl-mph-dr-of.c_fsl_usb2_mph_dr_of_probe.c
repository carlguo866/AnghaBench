
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct fsl_usb2_platform_data {int invert_drvvbus; int invert_pwr_fault; scalar_t__ controller_ver; scalar_t__ have_sysif_regs; void* check_phy_clk_valid; void* has_fsl_erratum_14; void* has_fsl_erratum_a006918; void* has_fsl_erratum_a005697; void* has_fsl_erratum_a005275; void* has_fsl_erratum_a007792; int phy_mode; int operating_mode; int port_enables; } ;
struct fsl_usb2_dev_data {int * drivers; int op_mode; } ;
struct device_node {int dummy; } ;
typedef int data ;


 int ARRAY_SIZE (int *) ;
 int ENODEV ;
 int FSL_USB2_MPH_HOST ;
 int FSL_USB2_PORT0_ENABLED ;
 int FSL_USB2_PORT1_ENABLED ;
 scalar_t__ FSL_USB_VER_NONE ;
 scalar_t__ IS_ERR (struct platform_device*) ;
 int PTR_ERR (struct platform_device*) ;
 int determine_usb_phy (unsigned char const*) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_warn (TYPE_1__*,char*) ;
 struct platform_device* fsl_usb2_device_register (struct platform_device*,struct fsl_usb2_platform_data*,int ,unsigned int) ;
 int fsl_usb2_mph_dr_of_match ;
 struct fsl_usb2_dev_data* get_dr_mode_data (struct device_node*) ;
 int memcpy (struct fsl_usb2_platform_data*,scalar_t__,int) ;
 int memset (struct fsl_usb2_platform_data*,int ,int) ;
 int of_device_is_available (struct device_node*) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 unsigned char* of_get_property (struct device_node*,char*,int *) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 void* of_property_read_bool (struct device_node*,char*) ;
 scalar_t__ usb_get_ver_info (struct device_node*) ;

__attribute__((used)) static int fsl_usb2_mph_dr_of_probe(struct platform_device *ofdev)
{
 struct device_node *np = ofdev->dev.of_node;
 struct platform_device *usb_dev;
 struct fsl_usb2_platform_data data, *pdata;
 struct fsl_usb2_dev_data *dev_data;
 const struct of_device_id *match;
 const unsigned char *prop;
 static unsigned int idx;
 int i;

 if (!of_device_is_available(np))
  return -ENODEV;

 match = of_match_device(fsl_usb2_mph_dr_of_match, &ofdev->dev);
 if (!match)
  return -ENODEV;

 pdata = &data;
 if (match->data)
  memcpy(pdata, match->data, sizeof(data));
 else
  memset(pdata, 0, sizeof(data));

 dev_data = get_dr_mode_data(np);

 if (of_device_is_compatible(np, "fsl-usb2-mph")) {
  if (of_get_property(np, "port0", ((void*)0)))
   pdata->port_enables |= FSL_USB2_PORT0_ENABLED;

  if (of_get_property(np, "port1", ((void*)0)))
   pdata->port_enables |= FSL_USB2_PORT1_ENABLED;

  pdata->operating_mode = FSL_USB2_MPH_HOST;
 } else {
  if (of_get_property(np, "fsl,invert-drvvbus", ((void*)0)))
   pdata->invert_drvvbus = 1;

  if (of_get_property(np, "fsl,invert-pwr-fault", ((void*)0)))
   pdata->invert_pwr_fault = 1;


  pdata->operating_mode = dev_data->op_mode;
 }

 prop = of_get_property(np, "phy_type", ((void*)0));
 pdata->phy_mode = determine_usb_phy(prop);
 pdata->controller_ver = usb_get_ver_info(np);


 pdata->has_fsl_erratum_a007792 =
  of_property_read_bool(np, "fsl,usb-erratum-a007792");
 pdata->has_fsl_erratum_a005275 =
  of_property_read_bool(np, "fsl,usb-erratum-a005275");
 pdata->has_fsl_erratum_a005697 =
  of_property_read_bool(np, "fsl,usb_erratum-a005697");
 pdata->has_fsl_erratum_a006918 =
  of_property_read_bool(np, "fsl,usb_erratum-a006918");
 pdata->has_fsl_erratum_14 =
  of_property_read_bool(np, "fsl,usb_erratum-14");





 pdata->check_phy_clk_valid =
  of_property_read_bool(np, "phy-clk-valid");

 if (pdata->have_sysif_regs) {
  if (pdata->controller_ver == FSL_USB_VER_NONE) {
   dev_warn(&ofdev->dev, "Could not get controller version\n");
   return -ENODEV;
  }
 }

 for (i = 0; i < ARRAY_SIZE(dev_data->drivers); i++) {
  if (!dev_data->drivers[i])
   continue;
  usb_dev = fsl_usb2_device_register(ofdev, pdata,
     dev_data->drivers[i], idx);
  if (IS_ERR(usb_dev)) {
   dev_err(&ofdev->dev, "Can't register usb device\n");
   return PTR_ERR(usb_dev);
  }
 }
 idx++;
 return 0;
}
