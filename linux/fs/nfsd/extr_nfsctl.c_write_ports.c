
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int ssize_t ;


 int __write_ports (struct file*,char*,size_t,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netns (struct file*) ;
 int nfsd_mutex ;

__attribute__((used)) static ssize_t write_ports(struct file *file, char *buf, size_t size)
{
 ssize_t rv;

 mutex_lock(&nfsd_mutex);
 rv = __write_ports(file, buf, size, netns(file));
 mutex_unlock(&nfsd_mutex);
 return rv;
}
