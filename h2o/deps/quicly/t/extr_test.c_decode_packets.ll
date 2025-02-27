; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_test.c_decode_packets.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_test.c_decode_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@quic_ctx = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decode_packets(i32* %0, %struct.TYPE_5__** %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %60, %3
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %63

15:                                               ; preds = %11
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %49, %15
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %20, i64 %21
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = add i64 %26, %27
  %29 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %29, i64 %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = sub i64 %35, %36
  %38 = call i64 @quicly_decode_packet(i32* @quic_ctx, i32* %19, i64 %28, i64 %37)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @SIZE_MAX, align 8
  %41 = icmp ne i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %16
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %51, i64 %52
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %50, %57
  br i1 %58, label %16, label %59

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %7, align 8
  br label %11

63:                                               ; preds = %11
  %64 = load i64, i64* %8, align 8
  ret i64 %64
}

declare dso_local i64 @quicly_decode_packet(i32*, i32*, i64, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
