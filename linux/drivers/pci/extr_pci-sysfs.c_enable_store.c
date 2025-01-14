
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {scalar_t__ driver; } ;
typedef size_t ssize_t ;


 int CAP_SYS_ADMIN ;
 size_t EBUSY ;
 size_t EIO ;
 size_t EPERM ;
 int capable (int ) ;
 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 size_t kstrtoul (char const*,int ,unsigned long*) ;
 int pci_disable_device (struct pci_dev*) ;
 size_t pci_enable_device (struct pci_dev*) ;
 scalar_t__ pci_is_enabled (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t enable_store(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 unsigned long val;
 ssize_t result = kstrtoul(buf, 0, &val);

 if (result < 0)
  return result;


 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 device_lock(dev);
 if (dev->driver)
  result = -EBUSY;
 else if (val)
  result = pci_enable_device(pdev);
 else if (pci_is_enabled(pdev))
  pci_disable_device(pdev);
 else
  result = -EIO;
 device_unlock(dev);

 return result < 0 ? result : count;
}
