; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_ControlMediaGetById.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_ControlMediaGetById.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_7__*, i64)* @vlm_ControlMediaGetById to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @vlm_ControlMediaGetById(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %35, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %7
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %16, i64 %18
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %13
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %29, i64 %31
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %3, align 8
  br label %39

34:                                               ; preds = %13
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %7

38:                                               ; preds = %7
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %39

39:                                               ; preds = %38, %26
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
