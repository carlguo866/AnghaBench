
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_ctx {scalar_t__ tc_magic; scalar_t__ tc_fd; } ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ TCP_CTX_MAGIC ;
 int proto_common_send (scalar_t__,unsigned char const*,size_t,int) ;

__attribute__((used)) static int
tcp_send(void *ctx, const unsigned char *data, size_t size, int fd)
{
 struct tcp_ctx *tctx = ctx;

 PJDLOG_ASSERT(tctx != ((void*)0));
 PJDLOG_ASSERT(tctx->tc_magic == TCP_CTX_MAGIC);
 PJDLOG_ASSERT(tctx->tc_fd >= 0);
 PJDLOG_ASSERT(fd == -1);

 return (proto_common_send(tctx->tc_fd, data, size, -1));
}
