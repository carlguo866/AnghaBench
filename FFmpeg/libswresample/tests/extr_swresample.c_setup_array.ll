; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/tests/extr_swresample.c_setup_array.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/tests/extr_swresample.c_setup_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SWR_CH_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i32, i32)* @setup_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_array(i32** %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @SWR_CH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @av_sample_fmt_is_planar(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 255
  %19 = call i32 @av_get_bytes_per_sample(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 255
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %39, %16
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @SWR_CH_MAX, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load i32**, i32*** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  store i32* %34, i32** %38, align 8
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %24

42:                                               ; preds = %24
  br label %47

43:                                               ; preds = %4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32**, i32*** %5, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  store i32* %44, i32** %46, align 8
  br label %47

47:                                               ; preds = %43, %42
  ret void
}

declare dso_local i64 @av_sample_fmt_is_planar(i32) #1

declare dso_local i32 @av_get_bytes_per_sample(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
