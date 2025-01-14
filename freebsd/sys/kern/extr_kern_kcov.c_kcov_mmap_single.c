
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ vm_ooffset_t ;
struct vm_object {int dummy; } ;
struct kcov_info {scalar_t__ kvaddr; int entries; struct vm_object* bufobj; } ;
struct cdev {int dummy; } ;


 int EINVAL ;
 int KCOV_ELEMENT_SIZE ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int devfs_get_cdevpriv (void**) ;
 int vm_object_reference (struct vm_object*) ;

__attribute__((used)) static int
kcov_mmap_single(struct cdev *dev, vm_ooffset_t *offset, vm_size_t size,
    struct vm_object **object, int nprot)
{
 struct kcov_info *info;
 int error;

 if ((nprot & (PROT_EXEC | PROT_READ | PROT_WRITE)) !=
     (PROT_READ | PROT_WRITE))
  return (EINVAL);

 if ((error = devfs_get_cdevpriv((void **)&info)) != 0)
  return (error);

 if (info->kvaddr == 0 || size / KCOV_ELEMENT_SIZE != info->entries)
  return (EINVAL);

 vm_object_reference(info->bufobj);
 *offset = 0;
 *object = info->bufobj;
 return (0);
}
