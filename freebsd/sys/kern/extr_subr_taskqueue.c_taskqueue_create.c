
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int taskqueue_enqueue_fn ;
struct taskqueue {int dummy; } ;


 int MTX_DEF ;
 struct taskqueue* _taskqueue_create (char const*,int,int ,void*,int ,char const*) ;

struct taskqueue *
taskqueue_create(const char *name, int mflags,
   taskqueue_enqueue_fn enqueue, void *context)
{

 return _taskqueue_create(name, mflags, enqueue, context,
   MTX_DEF, name);
}
