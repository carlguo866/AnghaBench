
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_peer_dev {int dummy; } ;
struct scif_dev {int spdev; } ;


 struct scif_peer_dev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline int _scifdev_alive(struct scif_dev *scifdev)
{
 struct scif_peer_dev *spdev;

 rcu_read_lock();
 spdev = rcu_dereference(scifdev->spdev);
 rcu_read_unlock();
 return !!spdev;
}
