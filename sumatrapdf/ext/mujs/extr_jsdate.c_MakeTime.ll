; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_MakeTime.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_MakeTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MinutesPerHour = common dso_local global double 0.000000e+00, align 8
@SecondsPerMinute = common dso_local global double 0.000000e+00, align 8
@msPerSecond = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double, double, double)* @MakeTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @MakeTime(double %0, double %1, double %2, double %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load double, double* %5, align 8
  %10 = load double, double* @MinutesPerHour, align 8
  %11 = fmul double %9, %10
  %12 = load double, double* %6, align 8
  %13 = fadd double %11, %12
  %14 = load double, double* @SecondsPerMinute, align 8
  %15 = fmul double %13, %14
  %16 = load double, double* %7, align 8
  %17 = fadd double %15, %16
  %18 = load double, double* @msPerSecond, align 8
  %19 = fmul double %17, %18
  %20 = load double, double* %8, align 8
  %21 = fadd double %19, %20
  ret double %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
