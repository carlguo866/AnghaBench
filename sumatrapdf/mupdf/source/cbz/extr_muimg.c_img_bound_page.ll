; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/cbz/extr_muimg.c_img_bound_page.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/cbz/extr_muimg.c_img_bound_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@DPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32*)* @img_bound_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_bound_page(%struct.TYPE_7__* noalias sret %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %1, i32** %4, align 8
  store i32* %2, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %6, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %7, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = call i32 @fz_image_resolution(%struct.TYPE_8__* %15, i32* %8, i32* %9)
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DPI, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* %8, align 4
  %25 = sdiv i32 %23, %24
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DPI, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* %9, align 4
  %33 = sdiv i32 %31, %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  ret void
}

declare dso_local i32 @fz_image_resolution(%struct.TYPE_8__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
