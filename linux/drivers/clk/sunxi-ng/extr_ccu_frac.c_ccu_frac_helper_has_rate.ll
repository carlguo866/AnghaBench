; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_frac.c_ccu_frac_helper_has_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_frac.c_ccu_frac_helper_has_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_common = type { i32 }
%struct.ccu_frac_internal = type { i64* }

@CCU_FEATURE_FRACTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccu_frac_helper_has_rate(%struct.ccu_common* %0, %struct.ccu_frac_internal* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccu_common*, align 8
  %6 = alloca %struct.ccu_frac_internal*, align 8
  %7 = alloca i64, align 8
  store %struct.ccu_common* %0, %struct.ccu_common** %5, align 8
  store %struct.ccu_frac_internal* %1, %struct.ccu_frac_internal** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.ccu_common*, %struct.ccu_common** %5, align 8
  %9 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CCU_FEATURE_FRACTIONAL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

15:                                               ; preds = %3
  %16 = load %struct.ccu_frac_internal*, %struct.ccu_frac_internal** %6, align 8
  %17 = getelementptr inbounds %struct.ccu_frac_internal, %struct.ccu_frac_internal* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %15
  %24 = load %struct.ccu_frac_internal*, %struct.ccu_frac_internal** %6, align 8
  %25 = getelementptr inbounds %struct.ccu_frac_internal, %struct.ccu_frac_internal* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %23, %15
  %32 = phi i1 [ true, %15 ], [ %30, %23 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %14
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
