
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int nbytes; scalar_t__* data; int complete; struct adb_request* next; scalar_t__ reply_len; scalar_t__ sent; } ;


 scalar_t__ ADB_PACKET ;
 int EINVAL ;
 struct adb_request* current_req ;
 scalar_t__ idle ;
 struct adb_request* last_req ;
 int macii_start () ;
 scalar_t__ macii_state ;

__attribute__((used)) static int macii_write(struct adb_request *req)
{
 if (req->nbytes < 2 || req->data[0] != ADB_PACKET || req->nbytes > 15) {
  req->complete = 1;
  return -EINVAL;
 }

 req->next = ((void*)0);
 req->sent = 0;
 req->complete = 0;
 req->reply_len = 0;

 if (current_req != ((void*)0)) {
  last_req->next = req;
  last_req = req;
 } else {
  current_req = req;
  last_req = req;
  if (macii_state == idle) macii_start();
 }
 return 0;
}
