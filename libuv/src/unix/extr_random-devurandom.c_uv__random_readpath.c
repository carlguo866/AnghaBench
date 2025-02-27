
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef size_t ssize_t ;


 scalar_t__ EINTR ;
 int O_RDONLY ;
 int S_ISCHR (int ) ;
 int UV_EIO ;
 int UV__ERR (scalar_t__) ;
 scalar_t__ errno ;
 scalar_t__ fstat (int,struct stat*) ;
 size_t read (int,char*,size_t) ;
 int uv__close (int) ;
 int uv__open_cloexec (char const*,int ) ;

int uv__random_readpath(const char* path, void* buf, size_t buflen) {
  struct stat s;
  size_t pos;
  ssize_t n;
  int fd;

  fd = uv__open_cloexec(path, O_RDONLY);

  if (fd == -1)
    return UV__ERR(errno);

  if (fstat(fd, &s)) {
    uv__close(fd);
    return UV__ERR(errno);
  }

  if (!S_ISCHR(s.st_mode)) {
    uv__close(fd);
    return UV_EIO;
  }

  for (pos = 0; pos != buflen; pos += n) {
    do
      n = read(fd, (char*) buf + pos, buflen - pos);
    while (n == -1 && errno == EINTR);

    if (n == -1) {
      uv__close(fd);
      return UV__ERR(errno);
    }

    if (n == 0) {
      uv__close(fd);
      return UV_EIO;
    }
  }

  uv__close(fd);
  return 0;
}
