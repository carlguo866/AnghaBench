; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aemphasis.c_biquad.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aemphasis.c_biquad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double, double, double, double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_3__*, double)* @biquad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @biquad(%struct.TYPE_3__* %0, double %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store double %1, double* %4, align 8
  %8 = load double, double* %4, align 8
  store double %8, double* %5, align 8
  %9 = load double, double* %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = fmul double %12, %15
  %17 = fsub double %9, %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load double, double* %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load double, double* %22, align 8
  %24 = fmul double %20, %23
  %25 = fsub double %17, %24
  store double %25, double* %6, align 8
  %26 = load double, double* %6, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load double, double* %28, align 8
  %30 = fmul double %26, %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load double, double* %32, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 5
  %36 = load double, double* %35, align 8
  %37 = fmul double %33, %36
  %38 = fadd double %30, %37
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load double, double* %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 6
  %44 = load double, double* %43, align 8
  %45 = fmul double %41, %44
  %46 = fadd double %38, %45
  store double %46, double* %7, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load double, double* %48, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store double %49, double* %51, align 8
  %52 = load double, double* %6, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store double %52, double* %54, align 8
  %55 = load double, double* %7, align 8
  ret double %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
