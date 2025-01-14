
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long sys_sync_file_range (int,unsigned long,unsigned long,int) ;

long compat_sync_file_range(int fd, unsigned long off_high, unsigned long off_low, unsigned long nb_high, unsigned long nb_low, int flags)
{
 return sys_sync_file_range(fd,
       (off_high << 32) | off_low,
       (nb_high << 32) | nb_low,
       flags);
}
