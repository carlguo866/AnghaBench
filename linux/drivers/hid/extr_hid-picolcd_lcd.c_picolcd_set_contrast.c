
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct picolcd_data {int lcd_contrast; int status; int lock; int hdev; } ;
struct lcd_device {int dummy; } ;
struct hid_report {int maxfield; TYPE_1__** field; } ;
struct TYPE_2__ {int report_count; } ;


 int ENODEV ;
 int HID_REQ_SET_REPORT ;
 int PICOLCD_FAILED ;
 int REPORT_CONTRAST ;
 int hid_hw_request (int ,struct hid_report*,int ) ;
 int hid_set_field (TYPE_1__*,int ,int) ;
 struct picolcd_data* lcd_get_data (struct lcd_device*) ;
 struct hid_report* picolcd_out_report (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int picolcd_set_contrast(struct lcd_device *ldev, int contrast)
{
 struct picolcd_data *data = lcd_get_data(ldev);
 struct hid_report *report = picolcd_out_report(REPORT_CONTRAST, data->hdev);
 unsigned long flags;

 if (!report || report->maxfield != 1 || report->field[0]->report_count != 1)
  return -ENODEV;

 data->lcd_contrast = contrast & 0x0ff;
 spin_lock_irqsave(&data->lock, flags);
 hid_set_field(report->field[0], 0, data->lcd_contrast);
 if (!(data->status & PICOLCD_FAILED))
  hid_hw_request(data->hdev, report, HID_REQ_SET_REPORT);
 spin_unlock_irqrestore(&data->lock, flags);
 return 0;
}
