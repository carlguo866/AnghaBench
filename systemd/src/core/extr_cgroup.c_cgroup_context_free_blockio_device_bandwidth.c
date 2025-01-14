
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* path; int blockio_device_bandwidths; } ;
typedef TYPE_1__ CGroupContext ;
typedef TYPE_1__ CGroupBlockIODeviceBandwidth ;


 int LIST_REMOVE (int ,int ,TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int device_bandwidths ;
 int free (TYPE_1__*) ;

void cgroup_context_free_blockio_device_bandwidth(CGroupContext *c, CGroupBlockIODeviceBandwidth *b) {
        assert(c);
        assert(b);

        LIST_REMOVE(device_bandwidths, c->blockio_device_bandwidths, b);
        free(b->path);
        free(b);
}
