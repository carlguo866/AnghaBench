
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; } ;
struct TYPE_7__ {int lock; int semaphore; TYPE_2__** last; TYPE_2__* first; int length; } ;
typedef TYPE_1__ MMAL_QUEUE_T ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;


 int mmal_queue_sanity_check (TYPE_1__*,TYPE_2__*) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;
 int vcos_semaphore_post (int *) ;

void mmal_queue_put_back(MMAL_QUEUE_T *queue, MMAL_BUFFER_HEADER_T *buffer)
{
   if(!queue || !buffer) return;

   vcos_mutex_lock(&queue->lock);
   mmal_queue_sanity_check(queue, buffer);
   queue->length++;
   buffer->next = queue->first;
   queue->first = buffer;
   if(queue->last == &queue->first) queue->last = &buffer->next;
   vcos_semaphore_post(&queue->semaphore);
   vcos_mutex_unlock(&queue->lock);
}
