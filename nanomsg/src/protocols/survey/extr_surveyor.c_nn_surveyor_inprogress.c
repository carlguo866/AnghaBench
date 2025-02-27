
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_surveyor {scalar_t__ state; } ;


 scalar_t__ NN_SURVEYOR_STATE_IDLE ;
 scalar_t__ NN_SURVEYOR_STATE_PASSIVE ;
 scalar_t__ NN_SURVEYOR_STATE_STOPPING ;

__attribute__((used)) static int nn_surveyor_inprogress (struct nn_surveyor *self)
{

    return self->state == NN_SURVEYOR_STATE_IDLE ||
        self->state == NN_SURVEYOR_STATE_PASSIVE ||
        self->state == NN_SURVEYOR_STATE_STOPPING ? 0 : 1;
}
