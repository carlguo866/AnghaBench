; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/utils/extr_bit_reader_utils.c_VP8LBitReaderSetBuffer.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/utils/extr_bit_reader_utils.c_VP8LBitReaderSetBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VP8LBitReaderSetBuffer(%struct.TYPE_4__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %15, 4294967288
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  store i32* %19, i32** %21, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ugt i64 %27, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = call i64 @VP8LIsEndOfStream(%struct.TYPE_4__* %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %32, %3
  %37 = phi i1 [ true, %3 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @VP8LIsEndOfStream(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
