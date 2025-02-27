; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_vlc_vaapi.c_vlc_chroma_to_vaapi.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_vlc_vaapi.c_vlc_chroma_to_vaapi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VA_RT_FORMAT_YUV420 = common dso_local global i32 0, align 4
@VA_FOURCC_NV12 = common dso_local global i32 0, align 4
@VA_RT_FORMAT_YUV420_10BPP = common dso_local global i32 0, align 4
@VA_FOURCC_P010 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_chroma_to_vaapi(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %18 [
    i32 129, label %8
    i32 128, label %13
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* @VA_RT_FORMAT_YUV420, align 4
  %10 = load i32*, i32** %5, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @VA_FOURCC_NV12, align 4
  %12 = load i32*, i32** %6, align 8
  store i32 %11, i32* %12, align 4
  br label %20

13:                                               ; preds = %3
  %14 = load i32, i32* @VA_RT_FORMAT_YUV420_10BPP, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @VA_FOURCC_P010, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  br label %20

18:                                               ; preds = %3
  %19 = call i32 (...) @vlc_assert_unreachable()
  br label %20

20:                                               ; preds = %18, %13, %8
  ret void
}

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
