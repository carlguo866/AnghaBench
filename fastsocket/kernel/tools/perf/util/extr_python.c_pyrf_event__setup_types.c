
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int tp_new; } ;


 int PyType_GenericNew ;
 int PyType_Ready (TYPE_1__*) ;
 TYPE_1__ pyrf_comm_event__type ;
 TYPE_1__ pyrf_lost_event__type ;
 TYPE_1__ pyrf_mmap_event__type ;
 TYPE_1__ pyrf_read_event__type ;
 TYPE_1__ pyrf_sample_event__type ;
 TYPE_1__ pyrf_task_event__type ;
 TYPE_1__ pyrf_throttle_event__type ;

__attribute__((used)) static int pyrf_event__setup_types(void)
{
 int err;
 pyrf_mmap_event__type.tp_new =
 pyrf_task_event__type.tp_new =
 pyrf_comm_event__type.tp_new =
 pyrf_lost_event__type.tp_new =
 pyrf_read_event__type.tp_new =
 pyrf_sample_event__type.tp_new =
 pyrf_throttle_event__type.tp_new = PyType_GenericNew;
 err = PyType_Ready(&pyrf_mmap_event__type);
 if (err < 0)
  goto out;
 err = PyType_Ready(&pyrf_lost_event__type);
 if (err < 0)
  goto out;
 err = PyType_Ready(&pyrf_task_event__type);
 if (err < 0)
  goto out;
 err = PyType_Ready(&pyrf_comm_event__type);
 if (err < 0)
  goto out;
 err = PyType_Ready(&pyrf_throttle_event__type);
 if (err < 0)
  goto out;
 err = PyType_Ready(&pyrf_read_event__type);
 if (err < 0)
  goto out;
 err = PyType_Ready(&pyrf_sample_event__type);
 if (err < 0)
  goto out;
out:
 return err;
}
