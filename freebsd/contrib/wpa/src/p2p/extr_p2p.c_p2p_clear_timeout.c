
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {int state; } ;


 int eloop_cancel_timeout (int ,struct p2p_data*,int *) ;
 int p2p_dbg (struct p2p_data*,char*,int ) ;
 int p2p_state_timeout ;
 int p2p_state_txt (int ) ;

void p2p_clear_timeout(struct p2p_data *p2p)
{
 p2p_dbg(p2p, "Clear timeout (state=%s)", p2p_state_txt(p2p->state));
 eloop_cancel_timeout(p2p_state_timeout, p2p, ((void*)0));
}
