
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_slave_event_eq {int cons; struct mlx4_eqe* event_eqe; } ;
struct mlx4_eqe {int owner; } ;


 int SLAVE_EVENT_EQ_SIZE ;

__attribute__((used)) static struct mlx4_eqe *next_slave_event_eqe(struct mlx4_slave_event_eq *slave_eq)
{
 struct mlx4_eqe *eqe =
  &slave_eq->event_eqe[slave_eq->cons & (SLAVE_EVENT_EQ_SIZE - 1)];
 return (!!(eqe->owner & 0x80) ^
  !!(slave_eq->cons & SLAVE_EVENT_EQ_SIZE)) ?
  eqe : ((void*)0);
}
