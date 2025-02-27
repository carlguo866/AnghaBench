; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_balloon.c_store_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_balloon.c_store_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { i32 }
%struct.sysdev_attribute = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sys_device*, %struct.sysdev_attribute*, i8*, i64)* @store_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_target(%struct.sys_device* %0, %struct.sysdev_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.sys_device*, align 8
  %7 = alloca %struct.sysdev_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.sys_device* %0, %struct.sys_device** %6, align 8
  store %struct.sysdev_attribute* %1, %struct.sysdev_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %13 = call i32 @capable(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* @EPERM, align 8
  %17 = sub i64 0, %16
  store i64 %17, i64* %5, align 8
  br label %26

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @memparse(i8* %19, i8** %10)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = lshr i64 %21, %22
  %24 = call i32 @balloon_set_new_target(i64 %23)
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %18, %15
  %27 = load i64, i64* %5, align 8
  ret i64 %27
}

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @memparse(i8*, i8**) #1

declare dso_local i32 @balloon_set_new_target(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
