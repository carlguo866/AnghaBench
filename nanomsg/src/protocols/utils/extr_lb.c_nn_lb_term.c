
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_lb {int priolist; } ;


 int nn_priolist_term (int *) ;

void nn_lb_term (struct nn_lb *self)
{
    nn_priolist_term (&self->priolist);
}
