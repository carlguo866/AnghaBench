; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-device.c_add_image_block_to_page.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-device.c_add_image_block_to_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@FZ_STEXT_BLOCK_IMAGE = common dso_local global i32 0, align 4
@fz_unit_rect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32*, i32*, i32, i32*)* @add_image_block_to_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @add_image_block_to_page(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call %struct.TYPE_8__* @add_block_to_page(i32* %10, i32* %11)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %9, align 8
  %13 = load i32, i32* @FZ_STEXT_BLOCK_IMAGE, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32 %16, i32* %20, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @fz_keep_image(i32* %21, i32* %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* @fz_unit_rect, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @fz_transform_rect(i32 %28, i32 %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  ret %struct.TYPE_8__* %33
}

declare dso_local %struct.TYPE_8__* @add_block_to_page(i32*, i32*) #1

declare dso_local i32 @fz_keep_image(i32*, i32*) #1

declare dso_local i32 @fz_transform_rect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
