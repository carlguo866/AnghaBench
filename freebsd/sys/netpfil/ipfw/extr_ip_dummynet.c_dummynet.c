
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dn_task ;
 int dn_tq ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
dummynet(void *arg)
{

 (void)arg;
 taskqueue_enqueue(dn_tq, &dn_task);
}
