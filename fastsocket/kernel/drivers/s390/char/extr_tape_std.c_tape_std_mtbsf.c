
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {int cpaddr; int op; } ;
struct tape_device {int modeset_byte; } ;
struct ccw1 {int dummy; } ;


 int BACKSPACEFILE ;
 scalar_t__ IS_ERR (struct tape_request*) ;
 int MODE_SET_DB ;
 int MTFSR ;
 int NOP ;
 int PTR_ERR (struct tape_request*) ;
 int TO_BSF ;
 struct tape_request* tape_alloc_request (int,int ) ;
 struct ccw1* tape_ccw_cc (int ,int ,int,int ) ;
 struct ccw1* tape_ccw_end (struct ccw1*,int ,int ,int *) ;
 struct ccw1* tape_ccw_repeat (struct ccw1*,int ,int) ;
 int tape_do_io_free (struct tape_device*,struct tape_request*) ;
 int tape_mtop (struct tape_device*,int ,int) ;

int
tape_std_mtbsf(struct tape_device *device, int mt_count)
{
 struct tape_request *request;
 struct ccw1 *ccw;
 int rc;

 request = tape_alloc_request(mt_count + 2, 0);
 if (IS_ERR(request))
  return PTR_ERR(request);
 request->op = TO_BSF;

 ccw = tape_ccw_cc(request->cpaddr, MODE_SET_DB, 1,
     device->modeset_byte);
 ccw = tape_ccw_repeat(ccw, BACKSPACEFILE, mt_count);
 ccw = tape_ccw_end(ccw, NOP, 0, ((void*)0));

 rc = tape_do_io_free(device, request);
 if (rc == 0) {
  rc = tape_mtop(device, MTFSR, 1);
  if (rc > 0)
   rc = 0;
 }
 return rc;
}
