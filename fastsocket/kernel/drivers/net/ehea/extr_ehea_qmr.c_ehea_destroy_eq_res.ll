; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_destroy_eq_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_destroy_eq_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_eq = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@H_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ehea_eq*, i64)* @ehea_destroy_eq_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ehea_destroy_eq_res(%struct.ehea_eq* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ehea_eq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ehea_eq* %0, %struct.ehea_eq** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ehea_eq*, %struct.ehea_eq** %4, align 8
  %9 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %8, i32 0, i32 1
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.ehea_eq*, %struct.ehea_eq** %4, align 8
  %13 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ehea_eq*, %struct.ehea_eq** %4, align 8
  %18 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @ehea_h_free_resource(i32 %16, i32 %19, i64 %20)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.ehea_eq*, %struct.ehea_eq** %4, align 8
  %23 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %22, i32 0, i32 1
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @H_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %3, align 8
  br label %38

31:                                               ; preds = %2
  %32 = load %struct.ehea_eq*, %struct.ehea_eq** %4, align 8
  %33 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %32, i32 0, i32 0
  %34 = call i32 @hw_queue_dtor(i32* %33)
  %35 = load %struct.ehea_eq*, %struct.ehea_eq** %4, align 8
  %36 = call i32 @kfree(%struct.ehea_eq* %35)
  %37 = load i64, i64* %6, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %31, %29
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ehea_h_free_resource(i32, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hw_queue_dtor(i32*) #1

declare dso_local i32 @kfree(%struct.ehea_eq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
