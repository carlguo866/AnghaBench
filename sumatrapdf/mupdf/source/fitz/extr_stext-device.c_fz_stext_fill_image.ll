; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-device.c_fz_stext_fill_image.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-device.c_fz_stext_fill_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, float, i32)* @fz_stext_fill_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_stext_fill_image(i32* %0, i32* %1, i32* %2, i32 %3, float %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %13, align 8
  %16 = load float, float* %11, align 4
  %17 = fcmp olt float %16, 5.000000e-01
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  br label %27

19:                                               ; preds = %6
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @add_image_block_to_page(i32* %20, i32 %23, i32 %24, i32* %25)
  br label %27

27:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @add_image_block_to_page(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
