
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_scc {int zlock; } ;
struct zs_port {struct zs_scc* scc; } ;
struct uart_port {int dummy; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct zs_port* to_zport (struct uart_port*) ;
 int zs_raw_stop_tx (struct zs_port*) ;

__attribute__((used)) static void zs_stop_tx(struct uart_port *uport)
{
 struct zs_port *zport = to_zport(uport);
 struct zs_scc *scc = zport->scc;

 spin_lock(&scc->zlock);
 zs_raw_stop_tx(zport);
 spin_unlock(&scc->zlock);
}
