
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ses_device {int page1_num_types; unsigned char* page10; int page10_len; unsigned char* page1_types; } ;
struct scsi_device {int dummy; } ;
struct enclosure_device {struct enclosure_component* component; struct ses_device* scratch; } ;
struct enclosure_component {int dummy; } ;


 unsigned char ENCLOSURE_COMPONENT_ARRAY_DEVICE ;
 unsigned char ENCLOSURE_COMPONENT_CONTROLLER_ELECTRONICS ;
 unsigned char ENCLOSURE_COMPONENT_DEVICE ;
 unsigned char ENCLOSURE_COMPONENT_SAS_EXPANDER ;
 unsigned char ENCLOSURE_COMPONENT_SCSI_INITIATOR_PORT ;
 unsigned char ENCLOSURE_COMPONENT_SCSI_TARGET_PORT ;
 int GFP_KERNEL ;
 int INIT_ALLOC_SIZE ;
 int IS_ERR (struct enclosure_component*) ;
 struct enclosure_component* enclosure_component_alloc (struct enclosure_device*,int ,unsigned char,char*) ;
 int enclosure_component_register (struct enclosure_component*) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;
 int ses_process_descriptor (struct enclosure_component*,unsigned char*) ;
 scalar_t__ ses_recv_diag (struct scsi_device*,int,unsigned char*,int) ;

__attribute__((used)) static void ses_enclosure_data_process(struct enclosure_device *edev,
           struct scsi_device *sdev,
           int create)
{
 u32 result;
 unsigned char *buf = ((void*)0), *type_ptr, *desc_ptr, *addl_desc_ptr = ((void*)0);
 int i, j, page7_len, len, components;
 struct ses_device *ses_dev = edev->scratch;
 int types = ses_dev->page1_num_types;
 unsigned char *hdr_buf = kzalloc(INIT_ALLOC_SIZE, GFP_KERNEL);

 if (!hdr_buf)
  goto simple_populate;


 if (ses_dev->page10)
  ses_recv_diag(sdev, 10, ses_dev->page10, ses_dev->page10_len);

 result = ses_recv_diag(sdev, 7, hdr_buf, INIT_ALLOC_SIZE);
 if (result)
  goto simple_populate;

 page7_len = len = (hdr_buf[2] << 8) + hdr_buf[3] + 4;

 buf = kzalloc(len + 1, GFP_KERNEL);
 if (!buf)
  goto simple_populate;
 result = ses_recv_diag(sdev, 7, buf, len);
 if (result) {
 simple_populate:
  kfree(buf);
  buf = ((void*)0);
  desc_ptr = ((void*)0);
  len = 0;
  page7_len = 0;
 } else {
  desc_ptr = buf + 8;
  len = (desc_ptr[2] << 8) + desc_ptr[3];

  desc_ptr += len + 4;
 }
 if (ses_dev->page10)
  addl_desc_ptr = ses_dev->page10 + 8;
 type_ptr = ses_dev->page1_types;
 components = 0;
 for (i = 0; i < types; i++, type_ptr += 4) {
  for (j = 0; j < type_ptr[1]; j++) {
   char *name = ((void*)0);
   struct enclosure_component *ecomp;

   if (desc_ptr) {
    if (desc_ptr >= buf + page7_len) {
     desc_ptr = ((void*)0);
    } else {
     len = (desc_ptr[2] << 8) + desc_ptr[3];
     desc_ptr += 4;


     desc_ptr[len] = '\0';
     name = desc_ptr;
    }
   }
   if (type_ptr[0] == ENCLOSURE_COMPONENT_DEVICE ||
       type_ptr[0] == ENCLOSURE_COMPONENT_ARRAY_DEVICE) {

    if (create)
     ecomp = enclosure_component_alloc(
      edev,
      components++,
      type_ptr[0],
      name);
    else
     ecomp = &edev->component[components++];

    if (!IS_ERR(ecomp)) {
     if (addl_desc_ptr)
      ses_process_descriptor(
       ecomp,
       addl_desc_ptr);
     if (create)
      enclosure_component_register(
       ecomp);
    }
   }
   if (desc_ptr)
    desc_ptr += len;

   if (addl_desc_ptr &&

       (type_ptr[0] == ENCLOSURE_COMPONENT_DEVICE ||
        type_ptr[0] == ENCLOSURE_COMPONENT_ARRAY_DEVICE ||
        type_ptr[0] == ENCLOSURE_COMPONENT_SAS_EXPANDER ||

        type_ptr[0] == ENCLOSURE_COMPONENT_SCSI_TARGET_PORT ||
        type_ptr[0] == ENCLOSURE_COMPONENT_SCSI_INITIATOR_PORT ||
        type_ptr[0] == ENCLOSURE_COMPONENT_CONTROLLER_ELECTRONICS))
    addl_desc_ptr += addl_desc_ptr[1] + 2;

  }
 }
 kfree(buf);
 kfree(hdr_buf);
}
