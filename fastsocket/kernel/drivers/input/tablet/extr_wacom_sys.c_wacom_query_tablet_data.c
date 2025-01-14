
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_features {scalar_t__ type; } ;
struct usb_interface {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ TABLETPC ;
 scalar_t__ TABLETPC2FG ;
 int WAC_HID_FEATURE_REPORT ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int wacom_get_report (struct usb_interface*,int ,int,unsigned char*,int,int) ;
 int wacom_set_report (struct usb_interface*,int ,int,unsigned char*,int,int) ;

__attribute__((used)) static int wacom_query_tablet_data(struct usb_interface *intf, struct wacom_features *features)
{
 unsigned char *rep_data;
 int limit = 0, report_id = 2;
 int error = -ENOMEM;

 rep_data = kmalloc(4, GFP_KERNEL);
 if (!rep_data)
  return error;



 if (features->type == TABLETPC2FG) {
  do {
   rep_data[0] = 3;
   rep_data[1] = 4;
   rep_data[2] = 0;
   rep_data[3] = 0;
   report_id = 3;
   error = wacom_set_report(intf, WAC_HID_FEATURE_REPORT,
    report_id, rep_data, 4, 1);
   if (error >= 0)
    error = wacom_get_report(intf,
     WAC_HID_FEATURE_REPORT, report_id,
     rep_data, 4, 1);
  } while ((error < 0 || rep_data[1] != 4) && limit++ < 5);
 } else if (features->type != TABLETPC) {
  do {
   rep_data[0] = 2;
   rep_data[1] = 2;
   error = wacom_set_report(intf, WAC_HID_FEATURE_REPORT,
    report_id, rep_data, 2, 1);
   if (error >= 0)
    error = wacom_get_report(intf,
     WAC_HID_FEATURE_REPORT, report_id,
     rep_data, 2, 1);
  } while ((error < 0 || rep_data[1] != 2) && limit++ < 5);
 }

 kfree(rep_data);

 return error < 0 ? error : 0;
}
