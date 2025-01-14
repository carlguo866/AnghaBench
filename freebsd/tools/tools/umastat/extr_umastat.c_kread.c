
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int kvm_t ;


 int MEMSTAT_ERROR_KVM ;
 int MEMSTAT_ERROR_KVM_SHORTREAD ;
 scalar_t__ kvm_read (int *,unsigned long,void*,size_t) ;

__attribute__((used)) static int
kread(kvm_t *kvm, void *kvm_pointer, void *address, size_t size,
    size_t offset)
{
 ssize_t ret;

 ret = kvm_read(kvm, (unsigned long)kvm_pointer + offset, address,
     size);
 if (ret < 0)
  return (MEMSTAT_ERROR_KVM);
 if ((size_t)ret != size)
  return (MEMSTAT_ERROR_KVM_SHORTREAD);
 return (0);
}
