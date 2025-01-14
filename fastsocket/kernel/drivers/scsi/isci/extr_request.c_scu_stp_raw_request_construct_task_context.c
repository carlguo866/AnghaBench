
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int fis_type; } ;
struct TYPE_4__ {TYPE_1__ stp; } ;
struct scu_task_context {int transfer_length_bytes; TYPE_2__ type; int task_type; int priority; scalar_t__ control_frame; } ;
struct isci_request {struct scu_task_context* tc; } ;
struct host_to_dev_fis {int dummy; } ;


 int FIS_REGH2D ;
 int SCU_TASK_PRIORITY_NORMAL ;
 int SCU_TASK_TYPE_SATA_RAW_FRAME ;
 int scu_sata_reqeust_construct_task_context (struct isci_request*,struct scu_task_context*) ;

__attribute__((used)) static void scu_stp_raw_request_construct_task_context(struct isci_request *ireq)
{
 struct scu_task_context *task_context = ireq->tc;

 scu_sata_reqeust_construct_task_context(ireq, task_context);

 task_context->control_frame = 0;
 task_context->priority = SCU_TASK_PRIORITY_NORMAL;
 task_context->task_type = SCU_TASK_TYPE_SATA_RAW_FRAME;
 task_context->type.stp.fis_type = FIS_REGH2D;
 task_context->transfer_length_bytes = sizeof(struct host_to_dev_fis) - sizeof(u32);
}
