; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_4t_4w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_4t_4w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_vt_4t_4w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_4t_4w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 2, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %6
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @hevc_vt_4t_4x2_msa(i32* %16, i32 %17, i32* %18, i32 %19, i32* %20)
  br label %58

22:                                               ; preds = %6
  %23 = load i32, i32* %12, align 4
  %24 = icmp eq i32 4, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @hevc_vt_4t_4x4_msa(i32* %26, i32 %27, i32* %28, i32 %29, i32* %30, i32 %31)
  br label %57

33:                                               ; preds = %22
  %34 = load i32, i32* %12, align 4
  %35 = icmp eq i32 8, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @hevc_vt_4t_4x8_msa(i32* %37, i32 %38, i32* %39, i32 %40, i32* %41, i32 %42)
  br label %56

44:                                               ; preds = %33
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 16, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @hevc_vt_4t_4x16_msa(i32* %48, i32 %49, i32* %50, i32 %51, i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %47, %44
  br label %56

56:                                               ; preds = %55, %36
  br label %57

57:                                               ; preds = %56, %25
  br label %58

58:                                               ; preds = %57, %15
  ret void
}

declare dso_local i32 @hevc_vt_4t_4x2_msa(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @hevc_vt_4t_4x4_msa(i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @hevc_vt_4t_4x8_msa(i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @hevc_vt_4t_4x16_msa(i32*, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
