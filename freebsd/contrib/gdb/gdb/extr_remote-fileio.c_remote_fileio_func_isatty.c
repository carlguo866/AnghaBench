
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIO_FD_CONSOLE_IN ;
 int FIO_FD_CONSOLE_OUT ;
 scalar_t__ remote_fileio_extract_int (char**,long*) ;
 int remote_fileio_ioerror () ;
 int remote_fileio_map_fd (int) ;
 int remote_fileio_return_success (int) ;
 int remote_fio_no_longjmp ;

__attribute__((used)) static void
remote_fileio_func_isatty (char *buf)
{
  long target_fd;
  int fd;


  if (remote_fileio_extract_int (&buf, &target_fd))
    {
      remote_fileio_ioerror ();
      return;
    }
  remote_fio_no_longjmp = 1;
  fd = remote_fileio_map_fd ((int) target_fd);
  remote_fileio_return_success (fd == FIO_FD_CONSOLE_IN ||
      fd == FIO_FD_CONSOLE_OUT ? 1 : 0);
}
