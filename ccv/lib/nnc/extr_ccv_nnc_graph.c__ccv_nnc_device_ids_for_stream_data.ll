; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_device_ids_for_stream_data.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_device_ids_for_stream_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, %struct.TYPE_9__*, i32*, i32)* @_ccv_nnc_device_ids_for_stream_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ccv_nnc_device_ids_for_stream_data(%struct.TYPE_8__* %0, i32 %1, %struct.TYPE_9__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @ccv_nnc_device_ids_for_io(i32 %15, i32 %18, i32 %21, i32 %24, i32* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %5
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = call i64 @ccv_array_get(%struct.TYPE_9__* %36, i32 0)
  %38 = inttoptr i64 %37 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %12, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %41, i32* %43, align 4
  br label %54

44:                                               ; preds = %30
  %45 = load i32, i32* %7, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  br label %50

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %35
  store i32 1, i32* %11, align 4
  br label %55

55:                                               ; preds = %54, %5
  %56 = load i32, i32* %11, align 4
  ret i32 %56
}

declare dso_local i32 @ccv_nnc_device_ids_for_io(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
