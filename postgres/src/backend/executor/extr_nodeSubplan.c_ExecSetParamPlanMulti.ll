; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeSubplan.c_ExecSetParamPlanMulti.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeSubplan.c_ExecSetParamPlanMulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecSetParamPlanMulti(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 -1, i32* %5, align 4
  br label %7

7:                                                ; preds = %35, %2
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @bms_next_member(i32* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %7
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %17
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %12
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = call i32 @ExecSetParamPlan(i32* %26, %struct.TYPE_6__* %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @Assert(i32 %33)
  br label %35

35:                                               ; preds = %23, %12
  br label %7

36:                                               ; preds = %7
  ret void
}

declare dso_local i32 @bms_next_member(i32*, i32) #1

declare dso_local i32 @ExecSetParamPlan(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
