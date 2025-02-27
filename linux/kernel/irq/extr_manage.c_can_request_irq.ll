; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_can_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_can_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IRQF_SHARED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @can_request_irq(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.irq_desc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.irq_desc* @irq_get_desc_lock(i32 %9, i64* %6, i32 0)
  store %struct.irq_desc* %10, %struct.irq_desc** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %12 = icmp ne %struct.irq_desc* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %16 = call i64 @irq_settings_can_request(%struct.irq_desc* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %20 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %26 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = and i64 %24, %29
  %31 = load i64, i64* @IRQF_SHARED, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23, %18
  store i32 1, i32* %8, align 4
  br label %35

35:                                               ; preds = %34, %23
  br label %36

36:                                               ; preds = %35, %14
  %37 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @irq_put_desc_unlock(%struct.irq_desc* %37, i64 %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %36, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.irq_desc* @irq_get_desc_lock(i32, i64*, i32) #1

declare dso_local i64 @irq_settings_can_request(%struct.irq_desc*) #1

declare dso_local i32 @irq_put_desc_unlock(%struct.irq_desc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
