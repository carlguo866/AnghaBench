
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vmcs12 {scalar_t__ io_bitmap_a; scalar_t__ io_bitmap_b; } ;
struct kvm_vcpu {int dummy; } ;
typedef scalar_t__ gpa_t ;


 int CPU_BASED_UNCOND_IO_EXITING ;
 int CPU_BASED_USE_IO_BITMAPS ;
 int EXIT_QUALIFICATION ;
 scalar_t__ kvm_vcpu_read_guest (struct kvm_vcpu*,scalar_t__,int*,int) ;
 int nested_cpu_has (struct vmcs12*,int ) ;
 unsigned long vmcs_readl (int ) ;

__attribute__((used)) static bool nested_vmx_exit_handled_io(struct kvm_vcpu *vcpu,
           struct vmcs12 *vmcs12)
{
 unsigned long exit_qualification;
 gpa_t bitmap, last_bitmap;
 unsigned int port;
 int size;
 u8 b;

 if (!nested_cpu_has(vmcs12, CPU_BASED_USE_IO_BITMAPS))
  return nested_cpu_has(vmcs12, CPU_BASED_UNCOND_IO_EXITING);

 exit_qualification = vmcs_readl(EXIT_QUALIFICATION);

 port = exit_qualification >> 16;
 size = (exit_qualification & 7) + 1;

 last_bitmap = (gpa_t)-1;
 b = -1;

 while (size > 0) {
  if (port < 0x8000)
   bitmap = vmcs12->io_bitmap_a;
  else if (port < 0x10000)
   bitmap = vmcs12->io_bitmap_b;
  else
   return 1;
  bitmap += (port & 0x7fff) / 8;

  if (last_bitmap != bitmap)
   if (kvm_vcpu_read_guest(vcpu, bitmap, &b, 1))
    return 1;
  if (b & (1 << (port & 7)))
   return 1;

  port++;
  size--;
  last_bitmap = bitmap;
 }

 return 0;
}
