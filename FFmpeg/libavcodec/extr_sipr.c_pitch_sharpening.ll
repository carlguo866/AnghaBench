; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sipr.c_pitch_sharpening.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sipr.c_pitch_sharpening.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBFR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, float, float*)* @pitch_sharpening to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pitch_sharpening(i32 %0, float %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store float %1, float* %5, align 4
  store float* %2, float** %6, align 8
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %7, align 4
  br label %9

9:                                                ; preds = %29, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @SUBFR_SIZE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = load float, float* %5, align 4
  %15 = load float*, float** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds float, float* %15, i64 %19
  %21 = load float, float* %20, align 4
  %22 = fmul float %14, %21
  %23 = load float*, float** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %23, i64 %25
  %27 = load float, float* %26, align 4
  %28 = fadd float %27, %22
  store float %28, float* %26, align 4
  br label %29

29:                                               ; preds = %13
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %9

32:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
