; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_extent_check_lba.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_extent_check_lba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CTL_ACTION_PASS = common dso_local global i32 0, align 4
@CTL_ACTION_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i32)* @ctl_extent_check_lba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_extent_check_lba(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 1
  %21 = sext i32 %20 to i64
  %22 = sub nsw i64 %16, %21
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = add nsw i64 %23, %24
  %26 = sub nsw i64 %25, 1
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %5
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %5
  %35 = load i32, i32* @CTL_ACTION_PASS, align 4
  store i32 %35, i32* %6, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @CTL_ACTION_BLOCK, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
