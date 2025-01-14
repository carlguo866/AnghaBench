
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int complete; } ;


 int adb_iop_poll () ;
 int adb_iop_write (struct adb_request*) ;

int adb_iop_send_request(struct adb_request *req, int sync)
{
 int err;

 err = adb_iop_write(req);
 if (err) return err;

 if (sync) {
  while (!req->complete) adb_iop_poll();
 }
 return 0;
}
