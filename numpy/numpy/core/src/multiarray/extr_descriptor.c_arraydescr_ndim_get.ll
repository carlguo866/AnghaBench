; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c_arraydescr_ndim_get.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c_arraydescr_ndim_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*)* @arraydescr_ndim_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @arraydescr_ndim_get(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = call i32 @PyDataType_HASSUBARRAY(%struct.TYPE_6__* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32* @PyInt_FromLong(i32 0)
  store i32* %9, i32** %2, align 8
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @PyTuple_Size(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32* @PyInt_FromLong(i32 %17)
  store i32* %18, i32** %2, align 8
  br label %19

19:                                               ; preds = %10, %8
  %20 = load i32*, i32** %2, align 8
  ret i32* %20
}

declare dso_local i32 @PyDataType_HASSUBARRAY(%struct.TYPE_6__*) #1

declare dso_local i32* @PyInt_FromLong(i32) #1

declare dso_local i32 @PyTuple_Size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
