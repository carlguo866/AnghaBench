
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct scu_unsolicited_frame_header {scalar_t__ is_address_frame; } ;
struct isci_remote_device {int dummy; } ;
struct isci_phy {int dummy; } ;
struct TYPE_5__ {TYPE_1__* array; } ;
struct TYPE_6__ {TYPE_2__ buffers; } ;
struct isci_host {size_t remote_node_entries; struct isci_remote_device** device_table; struct isci_phy* phys; TYPE_3__ uf_control; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;
struct TYPE_4__ {int state; struct scu_unsolicited_frame_header* header; } ;


 size_t SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX ;
 int SCI_FAILURE ;
 int SCI_SUCCESS ;
 size_t SCU_GET_COMPLETION_INDEX (size_t) ;
 scalar_t__ SCU_GET_FRAME_ERROR (size_t) ;
 size_t SCU_GET_FRAME_INDEX (size_t) ;
 size_t SCU_GET_PROTOCOL_ENGINE_INDEX (size_t) ;
 int UNSOLICITED_FRAME_IN_USE ;
 int sci_controller_release_frame (struct isci_host*,size_t) ;
 int sci_phy_frame_handler (struct isci_phy*,size_t) ;
 int sci_remote_device_frame_handler (struct isci_remote_device*,size_t) ;

__attribute__((used)) static void sci_controller_unsolicited_frame(struct isci_host *ihost, u32 ent)
{
 u32 index;
 u32 frame_index;

 struct scu_unsolicited_frame_header *frame_header;
 struct isci_phy *iphy;
 struct isci_remote_device *idev;

 enum sci_status result = SCI_FAILURE;

 frame_index = SCU_GET_FRAME_INDEX(ent);

 frame_header = ihost->uf_control.buffers.array[frame_index].header;
 ihost->uf_control.buffers.array[frame_index].state = UNSOLICITED_FRAME_IN_USE;

 if (SCU_GET_FRAME_ERROR(ent)) {




  sci_controller_release_frame(ihost, frame_index);
  return;
 }

 if (frame_header->is_address_frame) {
  index = SCU_GET_PROTOCOL_ENGINE_INDEX(ent);
  iphy = &ihost->phys[index];
  result = sci_phy_frame_handler(iphy, frame_index);
 } else {

  index = SCU_GET_COMPLETION_INDEX(ent);

  if (index == SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX) {




   index = SCU_GET_PROTOCOL_ENGINE_INDEX(ent);
   iphy = &ihost->phys[index];
   result = sci_phy_frame_handler(iphy, frame_index);
  } else {
   if (index < ihost->remote_node_entries)
    idev = ihost->device_table[index];
   else
    idev = ((void*)0);

   if (idev != ((void*)0))
    result = sci_remote_device_frame_handler(idev, frame_index);
   else
    sci_controller_release_frame(ihost, frame_index);
  }
 }

 if (result != SCI_SUCCESS) {



 }
}
