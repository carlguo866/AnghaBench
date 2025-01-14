; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_dshow_pixfmt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_dshow_pixfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_PIX_FMT_MONOWHITE = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB4 = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB8 = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB555 = common dso_local global i32 0, align 4
@AV_PIX_FMT_BGR24 = common dso_local global i32 0, align 4
@AV_PIX_FMT_0RGB32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @dshow_pixfmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dshow_pixfmt(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %22 [
    i32 129, label %7
    i32 128, label %7
  ]

7:                                                ; preds = %2, %2
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %21 [
    i32 1, label %9
    i32 4, label %11
    i32 8, label %13
    i32 16, label %15
    i32 24, label %17
    i32 32, label %19
  ]

9:                                                ; preds = %7
  %10 = load i32, i32* @AV_PIX_FMT_MONOWHITE, align 4
  store i32 %10, i32* %3, align 4
  br label %26

11:                                               ; preds = %7
  %12 = load i32, i32* @AV_PIX_FMT_RGB4, align 4
  store i32 %12, i32* %3, align 4
  br label %26

13:                                               ; preds = %7
  %14 = load i32, i32* @AV_PIX_FMT_RGB8, align 4
  store i32 %14, i32* %3, align 4
  br label %26

15:                                               ; preds = %7
  %16 = load i32, i32* @AV_PIX_FMT_RGB555, align 4
  store i32 %16, i32* %3, align 4
  br label %26

17:                                               ; preds = %7
  %18 = load i32, i32* @AV_PIX_FMT_BGR24, align 4
  store i32 %18, i32* %3, align 4
  br label %26

19:                                               ; preds = %7
  %20 = load i32, i32* @AV_PIX_FMT_0RGB32, align 4
  store i32 %20, i32* %3, align 4
  br label %26

21:                                               ; preds = %7
  br label %22

22:                                               ; preds = %21, %2
  %23 = call i32 (...) @avpriv_get_raw_pix_fmt_tags()
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @avpriv_find_pix_fmt(i32 %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %19, %17, %15, %13, %11, %9
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @avpriv_find_pix_fmt(i32, i32) #1

declare dso_local i32 @avpriv_get_raw_pix_fmt_tags(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
