
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct platform_device {int dev; } ;
struct TYPE_11__ {scalar_t__ index; int report_id; int size; } ;
struct TYPE_10__ {TYPE_5__ sensitivity; } ;
struct TYPE_9__ {TYPE_5__ sensitivity; } ;
struct TYPE_8__ {int scale_post_decml; int scale_pre_decml; void* scale_precision; } ;
struct TYPE_7__ {int scale_post_decml; int scale_pre_decml; void* scale_precision; } ;
struct magn_3d_state {TYPE_4__ rot_attributes; TYPE_3__ magn_flux_attributes; TYPE_2__ rot_attr; TYPE_5__* magn; TYPE_1__ magn_flux_attr; int * iio_vals; int ** magn_val_addr; } ;
struct iio_chan_spec {int scan_index; int address; } ;
struct hid_sensor_hub_device {int dummy; } ;


 size_t CHANNEL_SCAN_INDEX_NORTH_MAGN_TILT_COMP ;
 size_t CHANNEL_SCAN_INDEX_X ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_FEATURE_REPORT ;
 int HID_INPUT_REPORT ;
 int HID_USAGE_SENSOR_COMPASS_3D ;
 int HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS ;
 int HID_USAGE_SENSOR_DATA_ORIENTATION ;
 int HID_USAGE_SENSOR_ORIENT_COMP_MAGN_NORTH ;
 int HID_USAGE_SENSOR_ORIENT_MAGN_FLUX ;
 int MAGN_3D_CHANNEL_MAX ;
 int dev_dbg (int *,char*,scalar_t__,...) ;
 int dev_err (int *,char*) ;
 void* devm_kcalloc (int *,int,int,int ) ;
 void* hid_sensor_format_scale (int,TYPE_5__*,int *,int *) ;
 int* magn_3d_addresses ;
 int magn_3d_adjust_channel_bit_mask (struct iio_chan_spec*,int,int ) ;
 struct iio_chan_spec* magn_3d_channels ;
 int sensor_hub_input_get_attribute_info (struct hid_sensor_hub_device*,int ,unsigned int,int,TYPE_5__*) ;

__attribute__((used)) static int magn_3d_parse_report(struct platform_device *pdev,
    struct hid_sensor_hub_device *hsdev,
    struct iio_chan_spec **channels,
    int *chan_count,
    unsigned usage_id,
    struct magn_3d_state *st)
{
 int i;
 int attr_count = 0;
 struct iio_chan_spec *_channels;


 for (i = 0; i < MAGN_3D_CHANNEL_MAX; i++) {
  int status;
  u32 address = magn_3d_addresses[i];


  status = sensor_hub_input_get_attribute_info(hsdev,
   HID_INPUT_REPORT,
   usage_id,
   address,
   &(st->magn[i]));
  if (!status)
   attr_count++;
 }

 if (attr_count <= 0) {
  dev_err(&pdev->dev,
   "failed to find any supported usage attributes in report\n");
  return -EINVAL;
 }

 dev_dbg(&pdev->dev, "magn_3d Found %d usage attributes\n",
   attr_count);
 dev_dbg(&pdev->dev, "magn_3d X: %x:%x Y: %x:%x Z: %x:%x\n",
   st->magn[0].index,
   st->magn[0].report_id,
   st->magn[1].index, st->magn[1].report_id,
   st->magn[2].index, st->magn[2].report_id);


 _channels = devm_kcalloc(&pdev->dev, attr_count,
    sizeof(struct iio_chan_spec),
    GFP_KERNEL);
 if (!_channels) {
  dev_err(&pdev->dev,
   "failed to allocate space for iio channels\n");
  return -ENOMEM;
 }

 st->iio_vals = devm_kcalloc(&pdev->dev, attr_count,
    sizeof(u32),
    GFP_KERNEL);
 if (!st->iio_vals) {
  dev_err(&pdev->dev,
   "failed to allocate space for iio values array\n");
  return -ENOMEM;
 }

 for (i = 0, *chan_count = 0;
 i < MAGN_3D_CHANNEL_MAX && *chan_count < attr_count;
 i++){
  if (st->magn[i].index >= 0) {

   (_channels[*chan_count]) = magn_3d_channels[i];
   (_channels[*chan_count]).scan_index = *chan_count;
   (_channels[*chan_count]).address = i;


   st->magn_val_addr[i] = &(st->iio_vals[*chan_count]);
   magn_3d_adjust_channel_bit_mask(_channels,
       *chan_count,
       st->magn[i].size);
   (*chan_count)++;
  }
 }

 if (*chan_count <= 0) {
  dev_err(&pdev->dev,
   "failed to find any magnetic channels setup\n");
  return -EINVAL;
 }

 *channels = _channels;

 dev_dbg(&pdev->dev, "magn_3d Setup %d IIO channels\n",
   *chan_count);

 st->magn_flux_attr.scale_precision = hid_sensor_format_scale(
    HID_USAGE_SENSOR_COMPASS_3D,
    &st->magn[CHANNEL_SCAN_INDEX_X],
    &st->magn_flux_attr.scale_pre_decml,
    &st->magn_flux_attr.scale_post_decml);
 st->rot_attr.scale_precision
  = hid_sensor_format_scale(
   HID_USAGE_SENSOR_ORIENT_COMP_MAGN_NORTH,
   &st->magn[CHANNEL_SCAN_INDEX_NORTH_MAGN_TILT_COMP],
   &st->rot_attr.scale_pre_decml,
   &st->rot_attr.scale_post_decml);


 if (st->magn_flux_attributes.sensitivity.index < 0) {
  sensor_hub_input_get_attribute_info(hsdev,
   HID_FEATURE_REPORT, usage_id,
   HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS |
   HID_USAGE_SENSOR_DATA_ORIENTATION,
   &st->magn_flux_attributes.sensitivity);
  dev_dbg(&pdev->dev, "Sensitivity index:report %d:%d\n",
   st->magn_flux_attributes.sensitivity.index,
   st->magn_flux_attributes.sensitivity.report_id);
 }
 if (st->magn_flux_attributes.sensitivity.index < 0) {
  sensor_hub_input_get_attribute_info(hsdev,
   HID_FEATURE_REPORT, usage_id,
   HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS |
   HID_USAGE_SENSOR_ORIENT_MAGN_FLUX,
   &st->magn_flux_attributes.sensitivity);
  dev_dbg(&pdev->dev, "Sensitivity index:report %d:%d\n",
   st->magn_flux_attributes.sensitivity.index,
   st->magn_flux_attributes.sensitivity.report_id);
 }
 if (st->rot_attributes.sensitivity.index < 0) {
  sensor_hub_input_get_attribute_info(hsdev,
   HID_FEATURE_REPORT, usage_id,
   HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS |
   HID_USAGE_SENSOR_ORIENT_COMP_MAGN_NORTH,
   &st->rot_attributes.sensitivity);
  dev_dbg(&pdev->dev, "Sensitivity index:report %d:%d\n",
   st->rot_attributes.sensitivity.index,
   st->rot_attributes.sensitivity.report_id);
 }

 return 0;
}
