; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo.c_add_dequant_dct.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo.c_add_dequant_dct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, %struct.TYPE_5__, i32 (%struct.TYPE_6__*, i32*, i32, i32)* }
%struct.TYPE_5__ = type { i32 (i32*, i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32, i32*, i32, i32)* @add_dequant_dct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_dequant_dct(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %6
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32 (%struct.TYPE_6__*, i32*, i32, i32)*, i32 (%struct.TYPE_6__*, i32*, i32, i32)** %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 %24(%struct.TYPE_6__* %25, i32* %26, i32 %27, i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %32, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 %33(i32* %34, i32 %35, i32* %36)
  br label %38

38:                                               ; preds = %21, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
