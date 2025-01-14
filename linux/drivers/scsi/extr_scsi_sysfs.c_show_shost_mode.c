
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 unsigned int MODE_INITIATOR ;
 unsigned int MODE_TARGET ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t
show_shost_mode(unsigned int mode, char *buf)
{
 ssize_t len = 0;

 if (mode & MODE_INITIATOR)
  len = sprintf(buf, "%s", "Initiator");

 if (mode & MODE_TARGET)
  len += sprintf(buf + len, "%s%s", len ? ", " : "", "Target");

 len += sprintf(buf + len, "\n");

 return len;
}
