; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_ff_draw_supported_pixel_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_ff_draw_supported_pixel_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ff_draw_supported_pixel_formats(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %6, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @av_pix_fmt_desc_get(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @ff_draw_init(i32* %5, i32 %13, i32 %14)
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ff_add_format(i32** %6, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32* null, i32** %2, align 8
  br label %28

22:                                               ; preds = %17, %12
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %4, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %8

26:                                               ; preds = %8
  %27 = load i32*, i32** %6, align 8
  store i32* %27, i32** %2, align 8
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i32*, i32** %2, align 8
  ret i32* %29
}

declare dso_local i64 @av_pix_fmt_desc_get(i32) #1

declare dso_local i64 @ff_draw_init(i32*, i32, i32) #1

declare dso_local i32 @ff_add_format(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
