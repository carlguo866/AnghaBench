; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_page.c_linux_shmem_read_mapping_page_gfp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_page.c_linux_shmem_read_mapping_page_gfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"GFP_NOWAIT is unimplemented\00", align 1
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_NOBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_PAGER_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @linux_shmem_read_mapping_page_gfp(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @GFP_NOWAIT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @VM_OBJECT_WLOCK(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %22 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @vm_page_grab_valid(%struct.page** %8, i32 %19, i32 %20, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @VM_OBJECT_WUNLOCK(i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @VM_PAGER_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %16
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.page* @ERR_PTR(i32 %34)
  store %struct.page* %35, %struct.page** %4, align 8
  br label %38

36:                                               ; preds = %16
  %37 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %37, %struct.page** %4, align 8
  br label %38

38:                                               ; preds = %36, %32
  %39 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %39
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local i32 @vm_page_grab_valid(%struct.page**, i32, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
