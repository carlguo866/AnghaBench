
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hid_report_enum {scalar_t__ numbered; } ;
struct hid_report {int size; unsigned int maxfield; int * field; int id; } ;
struct hid_driver {int (* report ) (struct hid_device*,struct hid_report*) ;} ;
struct hid_device {int claimed; struct hid_driver* driver; int (* hiddev_report_event ) (struct hid_device*,struct hid_report*) ;struct hid_report_enum* report_enum; } ;


 int HID_CLAIMED_HIDDEV ;
 int HID_CLAIMED_HIDRAW ;
 int HID_CLAIMED_INPUT ;
 int HID_MAX_BUFFER_SIZE ;
 int dbg_hid (char*,int ,int,int) ;
 struct hid_report* hid_get_report (struct hid_report_enum*,int *) ;
 int hid_input_field (struct hid_device*,int ,int *,int) ;
 int hidinput_report_event (struct hid_device*,struct hid_report*) ;
 int hidraw_report_event (struct hid_device*,int *,int) ;
 int memset (int *,int ,int) ;
 int stub1 (struct hid_device*,struct hid_report*) ;
 int stub2 (struct hid_device*,struct hid_report*) ;

int hid_report_raw_event(struct hid_device *hid, int type, u8 *data, u32 size,
  int interrupt)
{
 struct hid_report_enum *report_enum = hid->report_enum + type;
 struct hid_report *report;
 struct hid_driver *hdrv;
 unsigned int a;
 u32 rsize, csize = size;
 u8 *cdata = data;
 int ret = 0;

 report = hid_get_report(report_enum, data);
 if (!report)
  goto out;

 if (report_enum->numbered) {
  cdata++;
  csize--;
 }

 rsize = ((report->size - 1) >> 3) + 1;

 if (rsize > HID_MAX_BUFFER_SIZE)
  rsize = HID_MAX_BUFFER_SIZE;

 if (csize < rsize) {
  dbg_hid("report %d is too short, (%d < %d)\n", report->id,
    csize, rsize);
  memset(cdata + csize, 0, rsize - csize);
 }

 if ((hid->claimed & HID_CLAIMED_HIDDEV) && hid->hiddev_report_event)
  hid->hiddev_report_event(hid, report);
 if (hid->claimed & HID_CLAIMED_HIDRAW) {
  ret = hidraw_report_event(hid, data, size);
  if (ret)
   goto out;
 }

 if (hid->claimed != HID_CLAIMED_HIDRAW && report->maxfield) {
  for (a = 0; a < report->maxfield; a++)
   hid_input_field(hid, report->field[a], cdata, interrupt);
  hdrv = hid->driver;
  if (hdrv && hdrv->report)
   hdrv->report(hid, report);
 }

 if (hid->claimed & HID_CLAIMED_INPUT)
  hidinput_report_event(hid, report);
out:
 return ret;
}
