; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_get_close_nodes.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_get_close_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i64*, i32, i32, i64, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { %struct.TYPE_14__, %struct.TYPE_13__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@MAX_SENT_NODES = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@LANOk = common dso_local global i32 0, align 4
@ProtoIPv4 = common dso_local global i64 0, align 8
@ProtoIPv6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_close_nodes(%struct.TYPE_16__* %0, i64* %1, %struct.TYPE_15__* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i64* %1, i64** %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %14 = load i32, i32* @MAX_SENT_NODES, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 40
  %17 = trunc i64 %16 to i32
  %18 = call i32 @memset(%struct.TYPE_15__* %13, i32 0, i32 %17)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %12, align 8
  %25 = call i32 @get_somewhat_close_nodes(%struct.TYPE_16__* %19, i64* %20, %struct.TYPE_15__* %21, i64 %22, i64 %23, i64 %24)
  ret i32 %25
}

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @get_somewhat_close_nodes(%struct.TYPE_16__*, i64*, %struct.TYPE_15__*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
