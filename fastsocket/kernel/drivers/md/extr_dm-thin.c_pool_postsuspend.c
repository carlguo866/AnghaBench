
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool_c {struct pool* pool; } ;
struct pool {int wq; int waker; } ;
struct dm_target {struct pool_c* private; } ;


 int cancel_delayed_work (int *) ;
 int commit (struct pool*) ;
 int flush_workqueue (int ) ;

__attribute__((used)) static void pool_postsuspend(struct dm_target *ti)
{
 struct pool_c *pt = ti->private;
 struct pool *pool = pt->pool;

 cancel_delayed_work(&pool->waker);
 flush_workqueue(pool->wq);
 (void) commit(pool);
}
