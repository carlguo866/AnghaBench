
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct pn533 {int dummy; } ;
typedef int pn533_send_async_complete_t ;


 int __pn533_send_async (struct pn533*,int ,struct sk_buff*,int ,void*) ;

__attribute__((used)) static int pn533_send_cmd_async(struct pn533 *dev, u8 cmd_code,
    struct sk_buff *req,
    pn533_send_async_complete_t complete_cb,
    void *complete_cb_context)
{
 int rc;

 rc = __pn533_send_async(dev, cmd_code, req, complete_cb,
    complete_cb_context);

 return rc;
}
