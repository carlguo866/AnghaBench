
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct port {int user_port; } ;
struct iovec {int dummy; } ;


 int MAX_MSG_SIZE ;
 int msg_build (struct tipc_msg*,struct iovec const*,int ,int ,int,struct sk_buff**) ;
 int tipc_reject_msg (struct sk_buff*,int) ;

int tipc_port_reject_sections(struct port *p_ptr, struct tipc_msg *hdr,
         struct iovec const *msg_sect, u32 num_sect,
         int err)
{
 struct sk_buff *buf;
 int res;

 res = msg_build(hdr, msg_sect, num_sect, MAX_MSG_SIZE,
   !p_ptr->user_port, &buf);
 if (!buf)
  return res;

 return tipc_reject_msg(buf, err);
}
