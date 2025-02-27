
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct necp_fd_data {scalar_t__ necp_fd_type; } ;
struct fileproc {TYPE_2__* f_fglob; } ;
typedef int proc_t ;
struct TYPE_4__ {scalar_t__ fg_data; TYPE_1__* fg_ops; } ;
struct TYPE_3__ {scalar_t__ fo_type; } ;


 scalar_t__ DTYPE_NETPOLICY ;
 int EINVAL ;
 int ENODEV ;
 int current_proc () ;
 int fp_drop (int ,int,struct fileproc*,int) ;
 int fp_lookup (int ,int,struct fileproc**,int) ;
 scalar_t__ necp_fd_type_client ;
 int proc_fdlock_spin (int ) ;
 int proc_fdunlock (int ) ;

__attribute__((used)) static int
necp_find_fd_data(int fd, struct necp_fd_data **fd_data)
{
 proc_t p = current_proc();
 struct fileproc *fp = ((void*)0);
 int error = 0;

 proc_fdlock_spin(p);
 if ((error = fp_lookup(p, fd, &fp, 1)) != 0) {
  goto done;
 }
 if (fp->f_fglob->fg_ops->fo_type != DTYPE_NETPOLICY) {
  fp_drop(p, fd, fp, 1);
  error = ENODEV;
  goto done;
 }
 *fd_data = (struct necp_fd_data *)fp->f_fglob->fg_data;

 if ((*fd_data)->necp_fd_type != necp_fd_type_client) {

  error = EINVAL;
  goto done;
 }

done:
 proc_fdunlock(p);
 return (error);
}
