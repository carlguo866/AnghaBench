
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_req_msg {int offset51; } ;



__attribute__((used)) static inline void cm_req_set_srq(struct cm_req_msg *req_msg, u8 srq)
{
 req_msg->offset51 = (u8) ((req_msg->offset51 & 0xF7) |
      ((srq & 0x1) << 3));
}
