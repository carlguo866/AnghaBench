; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_insert_state.c_ts_chunk_insert_state_convert_tuple.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_insert_state.c_ts_chunk_insert_state_convert_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@InvalidBuffer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_chunk_insert_state_convert_tuple(%struct.TYPE_5__* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* null, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %4, align 4
  br label %47

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @do_convert_tuple(i32 %21, i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @RelationGetDescr(i32 %29)
  %31 = call i32 @ExecSetSlotDescriptor(i32* %28, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @InvalidBuffer, align 4
  %37 = call i32 @ExecStoreTuple(i32 %32, i32* %35, i32 %36, i32 1)
  %38 = load i32**, i32*** %7, align 8
  %39 = icmp ne i32** null, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %20
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32**, i32*** %7, align 8
  store i32* %43, i32** %44, align 8
  br label %45

45:                                               ; preds = %40, %20
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %18
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @do_convert_tuple(i32, i32*) #1

declare dso_local i32 @ExecSetSlotDescriptor(i32*, i32) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @ExecStoreTuple(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
