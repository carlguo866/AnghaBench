; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_calculation.c_power_of_ten.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_calculation.c_power_of_ten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@power_of_ten.p10 = internal constant [9 x double] [double 1.000000e+00, double 1.000000e+01, double 1.000000e+02, double 1.000000e+03, double 1.000000e+04, double 1.000000e+05, double 1.000000e+06, double 1.000000e+07, double 1.000000e+08], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32)* @power_of_ten to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @power_of_ten(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 9
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [9 x double], [9 x double]* @power_of_ten.p10, i64 0, i64 %8
  %10 = load double, double* %9, align 8
  store double %10, double* %3, align 8
  br label %20

11:                                               ; preds = %1
  store double 1.000000e+09, double* %3, align 8
  br label %12

12:                                               ; preds = %16, %11
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %2, align 4
  %15 = icmp sgt i32 %13, 9
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load double, double* %3, align 8
  %18 = fmul double %17, 1.000000e+01
  store double %18, double* %3, align 8
  br label %12

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %6
  %21 = load double, double* %3, align 8
  ret double %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
