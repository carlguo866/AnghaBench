
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_event_buffer {int dummy; } ;
struct dwc3 {struct dwc3_event_buffer* ev_buf; int dev; } ;


 scalar_t__ IS_ERR (struct dwc3_event_buffer*) ;
 int PTR_ERR (struct dwc3_event_buffer*) ;
 int dev_err (int ,char*) ;
 struct dwc3_event_buffer* dwc3_alloc_one_event_buffer (struct dwc3*,unsigned int) ;

__attribute__((used)) static int dwc3_alloc_event_buffers(struct dwc3 *dwc, unsigned length)
{
 struct dwc3_event_buffer *evt;

 evt = dwc3_alloc_one_event_buffer(dwc, length);
 if (IS_ERR(evt)) {
  dev_err(dwc->dev, "can't allocate event buffer\n");
  return PTR_ERR(evt);
 }
 dwc->ev_buf = evt;

 return 0;
}
