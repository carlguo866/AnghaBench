
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_sqe {int dummy; } ;
typedef int off_t ;


 int IORING_OP_WRITE_FIXED ;
 int io_uring_prep_rw (int ,struct io_uring_sqe*,int,void const*,unsigned int,int ) ;

__attribute__((used)) static inline void io_uring_prep_write_fixed(struct io_uring_sqe *sqe, int fd,
          const void *buf, unsigned nbytes,
          off_t offset)
{
 io_uring_prep_rw(IORING_OP_WRITE_FIXED, sqe, fd, buf, nbytes, offset);
}
