
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef scalar_t__ int64_t ;


 int ERRNO_RESTORE () ;
 int ERRNO_SAVE () ;
 int ERRNO_SET (scalar_t__) ;
 int buf_send (int,void*,size_t) ;
 int fd_send (int,int*,size_t) ;
 int nv_free (void*) ;
 int* nvlist_descriptors (int const*,size_t*) ;
 scalar_t__ nvlist_error (int const*) ;
 void* nvlist_xpack (int const*,scalar_t__*,size_t*) ;

int
nvlist_send(int sock, const nvlist_t *nvl)
{
 size_t datasize, nfds;
 int *fds;
 void *data;
 int64_t fdidx;
 int ret;

 if (nvlist_error(nvl) != 0) {
  ERRNO_SET(nvlist_error(nvl));
  return (-1);
 }

 fds = nvlist_descriptors(nvl, &nfds);
 if (fds == ((void*)0))
  return (-1);

 ret = -1;
 fdidx = 0;

 data = nvlist_xpack(nvl, &fdidx, &datasize);
 if (data == ((void*)0))
  goto out;

 if (buf_send(sock, data, datasize) == -1)
  goto out;

 if (nfds > 0) {
  if (fd_send(sock, fds, nfds) == -1)
   goto out;
 }

 ret = 0;
out:
 ERRNO_SAVE();
 nv_free(fds);
 nv_free(data);
 ERRNO_RESTORE();
 return (ret);
}
