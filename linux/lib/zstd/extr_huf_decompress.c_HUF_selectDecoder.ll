; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_huf_decompress.c_HUF_selectDecoder.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_huf_decompress.c_HUF_selectDecoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@algoTime = common dso_local global %struct.TYPE_2__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUF_selectDecoder(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = mul i64 %9, 16
  %11 = load i64, i64* %3, align 8
  %12 = udiv i64 %10, %11
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %3, align 8
  %14 = lshr i64 %13, 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @algoTime, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @algoTime, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = mul i64 %28, %29
  %31 = add i64 %21, %30
  store i64 %31, i64* %7, align 8
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @algoTime, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @algoTime, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = mul i64 %45, %46
  %48 = add i64 %38, %47
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = lshr i64 %49, 3
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ult i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = sext i32 %56 to i64
  ret i64 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
