; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_test.c_CM_FloodAreaConnections.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_test.c_CM_FloodAreaConnections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@cm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CM_FloodAreaConnections() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cm, i32 0, i32 0), align 8
  %5 = add nsw i64 %4, 1
  store i64 %5, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cm, i32 0, i32 0), align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %27, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cm, i32 0, i32 1), align 8
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cm, i32 0, i32 2), align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %13
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %2, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cm, i32 0, i32 0), align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %27

21:                                               ; preds = %10
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @CM_FloodArea_r(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %20
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %6

30:                                               ; preds = %6
  ret void
}

declare dso_local i32 @CM_FloodArea_r(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
