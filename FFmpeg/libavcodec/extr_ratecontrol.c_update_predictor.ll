; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ratecontrol.c_update_predictor.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ratecontrol.c_update_predictor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, double, double, double)* @update_predictor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_predictor(%struct.TYPE_3__* %0, double %1, double %2, double %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %10 = load double, double* %8, align 8
  %11 = load double, double* %6, align 8
  %12 = fmul double %10, %11
  %13 = load double, double* %7, align 8
  %14 = fadd double %13, 1.000000e+00
  %15 = fdiv double %12, %14
  store double %15, double* %9, align 8
  %16 = load double, double* %7, align 8
  %17 = fcmp olt double %16, 1.000000e+01
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %43

19:                                               ; preds = %4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load double, double* %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = fmul double %25, %22
  store double %26, double* %24, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load double, double* %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load double, double* %31, align 8
  %33 = fmul double %32, %29
  store double %33, double* %31, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = fadd double %36, 1.000000e+00
  store double %37, double* %35, align 8
  %38 = load double, double* %9, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load double, double* %40, align 8
  %42 = fadd double %41, %38
  store double %42, double* %40, align 8
  br label %43

43:                                               ; preds = %19, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
