; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplestore.c_tuplestore_puttupleslot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplestore.c_tuplestore_puttupleslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tuplestore_puttupleslot(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @MemoryContextSwitchTo(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @ExecCopySlotMinimalTuple(i32* %11)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @GetMemoryChunkSpace(i64 %14)
  %16 = call i32 @USEMEM(%struct.TYPE_5__* %13, i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = load i64, i64* %5, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @tuplestore_puttuple_common(%struct.TYPE_5__* %17, i8* %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @MemoryContextSwitchTo(i32 %21)
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @ExecCopySlotMinimalTuple(i32*) #1

declare dso_local i32 @USEMEM(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @GetMemoryChunkSpace(i64) #1

declare dso_local i32 @tuplestore_puttuple_common(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
