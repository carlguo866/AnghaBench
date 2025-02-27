; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_stream_round_trip.c_makeInBuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_stream_round_trip.c_makeInBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32**, i64*, i32*)* @makeInBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makeInBuffer(%struct.TYPE_3__* noalias sret %0, i32** %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  store i32** %1, i32*** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32* %3, i32** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %9 = load i32**, i32*** %5, align 8
  %10 = load i32*, i32** %9, align 8
  %11 = ptrtoint i32* %10 to i64
  store i64 %11, i64* %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @FUZZ_ASSERT(i32 %18)
  %20 = load i32*, i32** %7, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @FUZZ_dataProducer_uint32Range(i32* %20, i32 1, i64 %22)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %6, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ule i64 %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @FUZZ_ASSERT(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32**, i32*** %5, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 %33
  store i32* %36, i32** %34, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %40, %38
  store i64 %41, i64* %39, align 8
  ret void
}

declare dso_local i32 @FUZZ_ASSERT(i32) #1

declare dso_local i64 @FUZZ_dataProducer_uint32Range(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
