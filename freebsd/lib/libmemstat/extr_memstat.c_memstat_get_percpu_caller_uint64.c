
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct memory_type {TYPE_1__* mt_percpu_alloc; } ;
struct TYPE_2__ {int * mtp_caller_uint64; } ;



uint64_t
memstat_get_percpu_caller_uint64(const struct memory_type *mtp, int cpu,
    int index)
{

 return (mtp->mt_percpu_alloc[cpu].mtp_caller_uint64[index]);
}
