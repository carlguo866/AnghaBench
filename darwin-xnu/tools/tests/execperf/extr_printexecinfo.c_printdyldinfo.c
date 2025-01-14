
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {scalar_t__ all_image_info_addr; } ;
typedef TYPE_1__ task_dyld_info_data_t ;
struct dyld_all_image_infos {scalar_t__ sharedCacheSlide; scalar_t__ dyldImageLoadAddress; } ;
typedef int mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int TASK_DYLD_INFO ;
 int TASK_DYLD_INFO_COUNT ;
 int errx (int,char*,int ) ;
 int mach_error_string (scalar_t__) ;
 int mach_task_self () ;
 int printf (char*,int ) ;
 scalar_t__ task_info (int ,int ,void*,int *) ;

void printdyldinfo(void)
{
 task_dyld_info_data_t info;
 mach_msg_type_number_t size = TASK_DYLD_INFO_COUNT;
 kern_return_t kret;
 struct dyld_all_image_infos *all_image_infos;

 kret = task_info(mach_task_self(), TASK_DYLD_INFO,
      (void *)&info, &size);
 if (kret != KERN_SUCCESS)
  errx(1, "task_info: %s", mach_error_string(kret));

 all_image_infos = (struct dyld_all_image_infos *)(uintptr_t)info.all_image_info_addr;

 printf("      dyld load address = 0x%016llx\n", (uint64_t)(uintptr_t)all_image_infos->dyldImageLoadAddress);
 printf("     shared cache slide = 0x%016llx\n", (uint64_t)(uintptr_t)all_image_infos->sharedCacheSlide);

}
