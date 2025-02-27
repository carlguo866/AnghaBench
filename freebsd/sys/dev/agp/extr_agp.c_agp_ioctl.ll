; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }

@AGP_ACQUIRE_USER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @agp_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %13 = load %struct.cdev*, %struct.cdev** %7, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %59 [
    i32 131, label %17
    i32 136, label %22
    i32 130, label %26
    i32 129, label %30
    i32 135, label %35
    i32 132, label %40
    i32 134, label %46
    i32 128, label %51
    i32 133, label %56
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* %12, align 4
  %19 = load i64, i64* %9, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = call i32 @agp_info_user(i32 %18, i32* %20)
  store i32 %21, i32* %6, align 4
  br label %61

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @AGP_ACQUIRE_USER, align 4
  %25 = call i32 @agp_acquire_helper(i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %61

26:                                               ; preds = %5
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @AGP_ACQUIRE_USER, align 4
  %29 = call i32 @agp_release_helper(i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %61

30:                                               ; preds = %5
  %31 = load i32, i32* %12, align 4
  %32 = load i64, i64* %9, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = call i32 @agp_setup_user(i32 %31, i32* %33)
  store i32 %34, i32* %6, align 4
  br label %61

35:                                               ; preds = %5
  %36 = load i32, i32* %12, align 4
  %37 = load i64, i64* %9, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = call i32 @agp_allocate_user(i32 %36, i32* %38)
  store i32 %39, i32* %6, align 4
  br label %61

40:                                               ; preds = %5
  %41 = load i32, i32* %12, align 4
  %42 = load i64, i64* %9, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @agp_deallocate_user(i32 %41, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %61

46:                                               ; preds = %5
  %47 = load i32, i32* %12, align 4
  %48 = load i64, i64* %9, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = call i32 @agp_bind_user(i32 %47, i32* %49)
  store i32 %50, i32* %6, align 4
  br label %61

51:                                               ; preds = %5
  %52 = load i32, i32* %12, align 4
  %53 = load i64, i64* %9, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = call i32 @agp_unbind_user(i32 %52, i32* %54)
  store i32 %55, i32* %6, align 4
  br label %61

56:                                               ; preds = %5
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @agp_chipset_flush(i32 %57)
  store i32 %58, i32* %6, align 4
  br label %61

59:                                               ; preds = %5
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %56, %51, %46, %40, %35, %30, %26, %22, %17
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @agp_info_user(i32, i32*) #1

declare dso_local i32 @agp_acquire_helper(i32, i32) #1

declare dso_local i32 @agp_release_helper(i32, i32) #1

declare dso_local i32 @agp_setup_user(i32, i32*) #1

declare dso_local i32 @agp_allocate_user(i32, i32*) #1

declare dso_local i32 @agp_deallocate_user(i32, i32) #1

declare dso_local i32 @agp_bind_user(i32, i32*) #1

declare dso_local i32 @agp_unbind_user(i32, i32*) #1

declare dso_local i32 @agp_chipset_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
