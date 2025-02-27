
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mvpp2_queue_vector {scalar_t__ type; int sw_thread_id; } ;
struct mvpp2_port {int nqvecs; int id; TYPE_1__* priv; struct mvpp2_queue_vector* qvecs; } ;
struct TYPE_2__ {scalar_t__ hw_version; } ;


 scalar_t__ MVPP22 ;
 scalar_t__ MVPP2_CAUSE_RXQ_OCCUP_DESC_ALL_MASK (scalar_t__) ;
 int MVPP2_ISR_RX_TX_MASK_REG (int ) ;
 scalar_t__ MVPP2_QUEUE_VECTOR_SHARED ;
 int mvpp2_thread_write (TYPE_1__*,int ,int ,scalar_t__) ;

__attribute__((used)) static void
mvpp2_shared_interrupt_mask_unmask(struct mvpp2_port *port, bool mask)
{
 u32 val;
 int i;

 if (port->priv->hw_version != MVPP22)
  return;

 if (mask)
  val = 0;
 else
  val = MVPP2_CAUSE_RXQ_OCCUP_DESC_ALL_MASK(MVPP22);

 for (i = 0; i < port->nqvecs; i++) {
  struct mvpp2_queue_vector *v = port->qvecs + i;

  if (v->type != MVPP2_QUEUE_VECTOR_SHARED)
   continue;

  mvpp2_thread_write(port->priv, v->sw_thread_id,
       MVPP2_ISR_RX_TX_MASK_REG(port->id), val);
 }
}
