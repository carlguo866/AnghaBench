
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cmd {struct mp_cmd* queue_next; } ;
struct cmd_queue {struct mp_cmd* first; } ;



__attribute__((used)) static struct mp_cmd *queue_peek_tail(struct cmd_queue *queue)
{
    struct mp_cmd *cur = queue->first;
    while (cur && cur->queue_next)
        cur = cur->queue_next;
    return cur;
}
