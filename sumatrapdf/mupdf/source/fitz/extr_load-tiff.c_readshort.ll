; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-tiff.c_readshort.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-tiff.c_readshort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiff = type { i64 }

@TII = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tiff*)* @readshort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readshort(%struct.tiff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tiff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tiff* %0, %struct.tiff** %3, align 8
  %6 = load %struct.tiff*, %struct.tiff** %3, align 8
  %7 = call i32 @tiff_readbyte(%struct.tiff* %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.tiff*, %struct.tiff** %3, align 8
  %9 = call i32 @tiff_readbyte(%struct.tiff* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.tiff*, %struct.tiff** %3, align 8
  %11 = getelementptr inbounds %struct.tiff, %struct.tiff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TII, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, 8
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %2, align 4
  br label %25

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = shl i32 %21, 8
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @tiff_readbyte(%struct.tiff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
