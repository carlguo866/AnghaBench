
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; struct snd_pcm_substream* vm_private_data; int * vm_ops; } ;
struct snd_pcm_substream {int mmap_count; } ;


 int VM_RESERVED ;
 int atomic_inc (int *) ;
 int snd_pcm_vm_ops_data ;

int snd_pcm_lib_default_mmap(struct snd_pcm_substream *substream,
        struct vm_area_struct *area)
{
 area->vm_ops = &snd_pcm_vm_ops_data;
 area->vm_private_data = substream;
 area->vm_flags |= VM_RESERVED;
 atomic_inc(&substream->mmap_count);
 return 0;
}
