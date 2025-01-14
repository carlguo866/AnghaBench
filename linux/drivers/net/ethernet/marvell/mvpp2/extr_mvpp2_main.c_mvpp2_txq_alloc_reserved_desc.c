
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_tx_queue {int id; } ;
struct mvpp2_port {struct mvpp2* priv; } ;
struct mvpp2 {int dummy; } ;


 int MVPP2_TXQ_RSVD_REQ_Q_OFFSET ;
 int MVPP2_TXQ_RSVD_REQ_REG ;
 int MVPP2_TXQ_RSVD_RSLT_MASK ;
 int MVPP2_TXQ_RSVD_RSLT_REG ;
 unsigned int mvpp2_cpu_to_thread (struct mvpp2*,int ) ;
 int mvpp2_thread_read_relaxed (struct mvpp2*,unsigned int,int ) ;
 int mvpp2_thread_write_relaxed (struct mvpp2*,unsigned int,int ,int) ;
 int smp_processor_id () ;

__attribute__((used)) static int mvpp2_txq_alloc_reserved_desc(struct mvpp2_port *port,
      struct mvpp2_tx_queue *txq, int num)
{
 unsigned int thread = mvpp2_cpu_to_thread(port->priv, smp_processor_id());
 struct mvpp2 *priv = port->priv;
 u32 val;

 val = (txq->id << MVPP2_TXQ_RSVD_REQ_Q_OFFSET) | num;
 mvpp2_thread_write_relaxed(priv, thread, MVPP2_TXQ_RSVD_REQ_REG, val);

 val = mvpp2_thread_read_relaxed(priv, thread, MVPP2_TXQ_RSVD_RSLT_REG);

 return val & MVPP2_TXQ_RSVD_RSLT_MASK;
}
