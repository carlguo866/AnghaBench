; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/utils/extr_thread_utils.c_Reset.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/utils/extr_thread_utils.c_Reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32*, i64 }

@OK = common dso_local global i64 0, align 8
@ThreadLoop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @Reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Reset(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  store i64 0, i64* %5, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @OK, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i64, i64* @OK, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  br label %25

15:                                               ; preds = %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @OK, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = call i32 @Sync(%struct.TYPE_8__* %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %15
  br label %25

25:                                               ; preds = %24, %11
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @OK, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %28, %25
  %35 = phi i1 [ true, %25 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @Sync(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
