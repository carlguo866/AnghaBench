
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ SECSID_NULL ;
 int security_sid_mls_copy (int *,scalar_t__,scalar_t__,scalar_t__*) ;
 int selinux_state ;

__attribute__((used)) static int selinux_conn_sid(u32 sk_sid, u32 skb_sid, u32 *conn_sid)
{
 int err = 0;

 if (skb_sid != SECSID_NULL)
  err = security_sid_mls_copy(&selinux_state, sk_sid, skb_sid,
         conn_sid);
 else
  *conn_sid = sk_sid;

 return err;
}
