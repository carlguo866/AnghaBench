; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_av_to_hb_pts.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_av_to_hb_pts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, double, i64)* @av_to_hb_pts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @av_to_hb_pts(i64 %0, double %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store double %1, double* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i64, i64* @AV_NOPTS_VALUE, align 8
  store i64 %12, i64* %4, align 8
  br label %21

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = sitofp i64 %14 to double
  %16 = load double, double* %6, align 8
  %17 = fmul double %15, %16
  %18 = fptosi double %17 to i64
  %19 = load i64, i64* %7, align 8
  %20 = sub nsw i64 %18, %19
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %13, %11
  %22 = load i64, i64* %4, align 8
  ret i64 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
