; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_rx_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_rx_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIMIT_SHIFT = common dso_local global i64 0, align 8
@S32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i32)* @cio2_rx_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cio2_rx_timing(i32 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 16, i32* %10, align 4
  store i32 500000000, i32* %11, align 4
  %13 = load i64, i64* @LIMIT_SHIFT, align 8
  %14 = load i64, i64* %8, align 8
  %15 = ashr i64 %14, %13
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @S32_MAX, align 8
  %21 = icmp sgt i64 %19, %20
  br label %22

22:                                               ; preds = %18, %4
  %23 = phi i1 [ true, %4 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %5, align 4
  br label %45

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 16, %30
  %32 = load i64, i64* @LIMIT_SHIFT, align 8
  %33 = trunc i64 %32 to i32
  %34 = ashr i32 500000000, %33
  %35 = mul nsw i32 %31, %34
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i64, i64* %8, align 8
  %38 = trunc i64 %37 to i32
  %39 = sdiv i32 %36, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %6, align 4
  %41 = mul nsw i32 16, %40
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %29, %27
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
