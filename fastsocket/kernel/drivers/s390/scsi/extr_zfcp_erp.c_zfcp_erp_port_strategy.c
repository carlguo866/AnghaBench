
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {int status; } ;
struct zfcp_erp_action {int step; int status; struct zfcp_port* port; } ;


 int ZFCP_ERP_EXIT ;
 int ZFCP_ERP_FAILED ;


 int ZFCP_STATUS_COMMON_NOESC ;
 int ZFCP_STATUS_COMMON_OPEN ;
 int ZFCP_STATUS_ERP_CLOSE_ONLY ;
 int atomic_read (int *) ;
 int zfcp_erp_port_strategy_clearstati (struct zfcp_port*) ;
 int zfcp_erp_port_strategy_close (struct zfcp_erp_action*) ;
 int zfcp_erp_port_strategy_open_common (struct zfcp_erp_action*) ;

__attribute__((used)) static int zfcp_erp_port_strategy(struct zfcp_erp_action *erp_action)
{
 struct zfcp_port *port = erp_action->port;
 int p_status = atomic_read(&port->status);

 if ((p_status & ZFCP_STATUS_COMMON_NOESC) &&
     !(p_status & ZFCP_STATUS_COMMON_OPEN))
  goto close_init_done;

 switch (erp_action->step) {
 case 128:
  zfcp_erp_port_strategy_clearstati(port);
  if (p_status & ZFCP_STATUS_COMMON_OPEN)
   return zfcp_erp_port_strategy_close(erp_action);
  break;

 case 129:
  if (p_status & ZFCP_STATUS_COMMON_OPEN)
   return ZFCP_ERP_FAILED;
  break;
 }

close_init_done:
 if (erp_action->status & ZFCP_STATUS_ERP_CLOSE_ONLY)
  return ZFCP_ERP_EXIT;

 return zfcp_erp_port_strategy_open_common(erp_action);
}
