; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_test.c_CM_ClusterPVS.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_test.c_CM_ClusterPVS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32 }

@cm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CM_ClusterPVS(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm, i32 0, i32 0), align 8
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm, i32 0, i32 3), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %6, %1
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm, i32 0, i32 2), align 8
  store i32* %14, i32** %2, align 8
  br label %22

15:                                               ; preds = %10
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm, i32 0, i32 2), align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm, i32 0, i32 1), align 4
  %19 = mul nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  store i32* %21, i32** %2, align 8
  br label %22

22:                                               ; preds = %15, %13
  %23 = load i32*, i32** %2, align 8
  ret i32* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
