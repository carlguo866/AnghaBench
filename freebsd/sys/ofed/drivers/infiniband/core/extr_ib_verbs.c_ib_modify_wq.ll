; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_modify_wq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_modify_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_wq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ib_wq*, %struct.ib_wq_attr*, i32, i32*)* }
%struct.ib_wq_attr = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_modify_wq(%struct.ib_wq* %0, %struct.ib_wq_attr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_wq*, align 8
  %6 = alloca %struct.ib_wq_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ib_wq* %0, %struct.ib_wq** %5, align 8
  store %struct.ib_wq_attr* %1, %struct.ib_wq_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ib_wq*, %struct.ib_wq** %5, align 8
  %10 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.ib_wq*, %struct.ib_wq_attr*, i32, i32*)*, i32 (%struct.ib_wq*, %struct.ib_wq_attr*, i32, i32*)** %12, align 8
  %14 = icmp ne i32 (%struct.ib_wq*, %struct.ib_wq_attr*, i32, i32*)* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOSYS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %29

18:                                               ; preds = %3
  %19 = load %struct.ib_wq*, %struct.ib_wq** %5, align 8
  %20 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.ib_wq*, %struct.ib_wq_attr*, i32, i32*)*, i32 (%struct.ib_wq*, %struct.ib_wq_attr*, i32, i32*)** %22, align 8
  %24 = load %struct.ib_wq*, %struct.ib_wq** %5, align 8
  %25 = load %struct.ib_wq_attr*, %struct.ib_wq_attr** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 %23(%struct.ib_wq* %24, %struct.ib_wq_attr* %25, i32 %26, i32* null)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %18, %15
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
