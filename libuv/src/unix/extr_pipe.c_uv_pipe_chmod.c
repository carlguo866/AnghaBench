
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_pipe_t ;
struct stat {unsigned int st_mode; } ;


 unsigned int S_IRGRP ;
 unsigned int S_IROTH ;
 unsigned int S_IRUSR ;
 unsigned int S_IWGRP ;
 unsigned int S_IWOTH ;
 unsigned int S_IWUSR ;
 int UV_EBADF ;
 int UV_EINVAL ;
 int UV_ENOBUFS ;
 int UV_ENOMEM ;
 int UV_READABLE ;
 int UV_WRITABLE ;
 int UV__ERR (int) ;
 int chmod (char*,unsigned int) ;
 int errno ;
 int stat (char*,struct stat*) ;
 int uv__free (char*) ;
 char* uv__malloc (size_t) ;
 int uv__stream_fd (int *) ;
 int uv_pipe_getsockname (int *,char*,size_t*) ;

int uv_pipe_chmod(uv_pipe_t* handle, int mode) {
  unsigned desired_mode;
  struct stat pipe_stat;
  char* name_buffer;
  size_t name_len;
  int r;

  if (handle == ((void*)0) || uv__stream_fd(handle) == -1)
    return UV_EBADF;

  if (mode != UV_READABLE &&
      mode != UV_WRITABLE &&
      mode != (UV_WRITABLE | UV_READABLE))
    return UV_EINVAL;


  name_len = 0;
  r = uv_pipe_getsockname(handle, ((void*)0), &name_len);
  if (r != UV_ENOBUFS)
    return r;

  name_buffer = uv__malloc(name_len);
  if (name_buffer == ((void*)0))
    return UV_ENOMEM;

  r = uv_pipe_getsockname(handle, name_buffer, &name_len);
  if (r != 0) {
    uv__free(name_buffer);
    return r;
  }


  if (stat(name_buffer, &pipe_stat) == -1) {
    uv__free(name_buffer);
    return -errno;
  }

  desired_mode = 0;
  if (mode & UV_READABLE)
    desired_mode |= S_IRUSR | S_IRGRP | S_IROTH;
  if (mode & UV_WRITABLE)
    desired_mode |= S_IWUSR | S_IWGRP | S_IWOTH;


  if ((pipe_stat.st_mode & desired_mode) == desired_mode) {
    uv__free(name_buffer);
    return 0;
  }

  pipe_stat.st_mode |= desired_mode;

  r = chmod(name_buffer, pipe_stat.st_mode);
  uv__free(name_buffer);

  return r != -1 ? 0 : UV__ERR(errno);
}
