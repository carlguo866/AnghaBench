; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_ReadRemainBuf.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_ReadRemainBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @ReadRemainBuf(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = icmp eq %struct.TYPE_6__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %28

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %28

17:                                               ; preds = %8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  store i64 %24, i64* %4, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call %struct.TYPE_6__* @ReadBufFromBuf(%struct.TYPE_6__* %25, i64 %26)
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %2, align 8
  br label %28

28:                                               ; preds = %17, %16, %7
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %29
}

declare dso_local %struct.TYPE_6__* @ReadBufFromBuf(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
