
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int nbytes; scalar_t__* data; int complete; struct adb_request* next; scalar_t__ reply_len; scalar_t__ sent; } ;


 scalar_t__ CUDA_PACKET ;
 int EINVAL ;
 int cuda_lock ;
 int cuda_start () ;
 scalar_t__ cuda_state ;
 struct adb_request* current_req ;
 scalar_t__ idle ;
 struct adb_request* last_req ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
cuda_write(struct adb_request *req)
{
    unsigned long flags;

    if (req->nbytes < 2 || req->data[0] > CUDA_PACKET) {
 req->complete = 1;
 return -EINVAL;
    }
    req->next = ((void*)0);
    req->sent = 0;
    req->complete = 0;
    req->reply_len = 0;

    spin_lock_irqsave(&cuda_lock, flags);
    if (current_req != 0) {
 last_req->next = req;
 last_req = req;
    } else {
 current_req = req;
 last_req = req;
 if (cuda_state == idle)
     cuda_start();
    }
    spin_unlock_irqrestore(&cuda_lock, flags);

    return 0;
}
