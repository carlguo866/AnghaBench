
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_queue {int write_ptr; int read_ptr; } ;



__attribute__((used)) static inline int
il_queue_used(const struct il_queue *q, int i)
{
 return q->write_ptr >= q->read_ptr ? (i >= q->read_ptr &&
           i < q->write_ptr) : !(i <
            q->read_ptr
            && i >=
            q->
            write_ptr);
}
