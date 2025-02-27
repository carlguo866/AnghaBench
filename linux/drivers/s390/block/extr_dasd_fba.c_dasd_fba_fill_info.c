
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_information2_t {int label_block; int FBA_layout; int characteristics_size; scalar_t__ confdata_size; int characteristics; int format; } ;
struct dasd_fba_private {int rdc_data; } ;
struct dasd_device {struct dasd_fba_private* private; } ;


 int DASD_FORMAT_LDL ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static int
dasd_fba_fill_info(struct dasd_device * device,
     struct dasd_information2_t * info)
{
 struct dasd_fba_private *private = device->private;

 info->label_block = 1;
 info->FBA_layout = 1;
 info->format = DASD_FORMAT_LDL;
 info->characteristics_size = sizeof(private->rdc_data);
 memcpy(info->characteristics, &private->rdc_data,
        sizeof(private->rdc_data));
 info->confdata_size = 0;
 return 0;
}
