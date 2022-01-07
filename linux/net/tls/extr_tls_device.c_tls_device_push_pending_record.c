
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct iov_iter {int dummy; } ;


 int TLS_RECORD_TYPE_DATA ;
 int WRITE ;
 int iov_iter_kvec (struct iov_iter*,int ,int *,int ,int ) ;
 int tls_push_data (struct sock*,struct iov_iter*,int ,int,int ) ;

__attribute__((used)) static int tls_device_push_pending_record(struct sock *sk, int flags)
{
 struct iov_iter msg_iter;

 iov_iter_kvec(&msg_iter, WRITE, ((void*)0), 0, 0);
 return tls_push_data(sk, &msg_iter, 0, flags, TLS_RECORD_TYPE_DATA);
}
