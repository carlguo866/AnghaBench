
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_tx_queue {int dummy; } ;
struct mvpp2_port {struct mvpp2_tx_queue** txqs; } ;


 int fls (int ) ;

__attribute__((used)) static inline struct mvpp2_tx_queue *mvpp2_get_tx_queue(struct mvpp2_port *port,
       u32 cause)
{
 int queue = fls(cause) - 1;

 return port->txqs[queue];
}
