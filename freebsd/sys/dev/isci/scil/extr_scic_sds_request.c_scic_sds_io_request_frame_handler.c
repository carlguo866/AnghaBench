
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_6__ {TYPE_1__* state_handlers; } ;
struct TYPE_5__ {int (* frame_handler ) (TYPE_2__*,int ) ;} ;
typedef int SCI_STATUS ;
typedef TYPE_2__ SCIC_SDS_REQUEST_T ;


 int stub1 (TYPE_2__*,int ) ;

SCI_STATUS scic_sds_io_request_frame_handler(
   SCIC_SDS_REQUEST_T * this_request,
   U32 frame_index
)
{
   return this_request->state_handlers->frame_handler(this_request, frame_index);
}
