; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_matrix.c_gdAffineRotate.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_matrix.c_gdAffineRotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global double 0.000000e+00, align 8
@GD_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdAffineRotate(double* %0, double %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double* %0, double** %3, align 8
  store double %1, double* %4, align 8
  %7 = load double, double* %4, align 8
  %8 = load double, double* @M_PI, align 8
  %9 = fmul double %7, %8
  %10 = fdiv double %9, 1.800000e+02
  %11 = call double @sin(double %10) #2
  store double %11, double* %5, align 8
  %12 = load double, double* %4, align 8
  %13 = load double, double* @M_PI, align 8
  %14 = fmul double %12, %13
  %15 = fdiv double %14, 1.800000e+02
  %16 = call double @cos(double %15) #2
  store double %16, double* %6, align 8
  %17 = load double, double* %6, align 8
  %18 = load double*, double** %3, align 8
  %19 = getelementptr inbounds double, double* %18, i64 0
  store double %17, double* %19, align 8
  %20 = load double, double* %5, align 8
  %21 = load double*, double** %3, align 8
  %22 = getelementptr inbounds double, double* %21, i64 1
  store double %20, double* %22, align 8
  %23 = load double, double* %5, align 8
  %24 = fneg double %23
  %25 = load double*, double** %3, align 8
  %26 = getelementptr inbounds double, double* %25, i64 2
  store double %24, double* %26, align 8
  %27 = load double, double* %6, align 8
  %28 = load double*, double** %3, align 8
  %29 = getelementptr inbounds double, double* %28, i64 3
  store double %27, double* %29, align 8
  %30 = load double*, double** %3, align 8
  %31 = getelementptr inbounds double, double* %30, i64 4
  store double 0.000000e+00, double* %31, align 8
  %32 = load double*, double** %3, align 8
  %33 = getelementptr inbounds double, double* %32, i64 5
  store double 0.000000e+00, double* %33, align 8
  %34 = load i32, i32* @GD_TRUE, align 4
  ret i32 %34
}

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
