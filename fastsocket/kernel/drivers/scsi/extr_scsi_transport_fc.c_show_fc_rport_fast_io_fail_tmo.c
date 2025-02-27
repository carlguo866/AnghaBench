
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_rport {int fast_io_fail_tmo; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int snprintf (char*,int,char*,...) ;
 struct fc_rport* transport_class_to_rport (struct device*) ;

__attribute__((used)) static ssize_t
show_fc_rport_fast_io_fail_tmo (struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct fc_rport *rport = transport_class_to_rport(dev);

 if (rport->fast_io_fail_tmo == -1)
  return snprintf(buf, 5, "off\n");
 return snprintf(buf, 20, "%d\n", rport->fast_io_fail_tmo);
}
