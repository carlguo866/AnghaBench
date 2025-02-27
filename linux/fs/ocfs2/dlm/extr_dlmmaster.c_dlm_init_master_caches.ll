; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_init_master_caches.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_init_master_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"o2dlm_lockres\00", align 1
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@dlm_lockres_cache = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"o2dlm_lockname\00", align 1
@DLM_LOCKID_NAME_MAX = common dso_local global i32 0, align 4
@dlm_lockname_cache = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_init_master_caches() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %3 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 %2, i32* null)
  store i8* %3, i8** @dlm_lockres_cache, align 8
  %4 = load i8*, i8** @dlm_lockres_cache, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %15

7:                                                ; preds = %0
  %8 = load i32, i32* @DLM_LOCKID_NAME_MAX, align 4
  %9 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %10 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %8, i32 0, i32 %9, i32* null)
  store i8* %10, i8** @dlm_lockname_cache, align 8
  %11 = load i8*, i8** @dlm_lockname_cache, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  br label %15

14:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %19

15:                                               ; preds = %13, %6
  %16 = call i32 (...) @dlm_destroy_master_caches()
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %15, %14
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i8* @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @dlm_destroy_master_caches(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
