; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_locomo.c___locomo_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_locomo.c___locomo_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.locomo = type { i64, i32, i32 }

@locomo_remove_child = common dso_local global i32 0, align 4
@NO_IRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.locomo*)* @__locomo_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__locomo_remove(%struct.locomo* %0) #0 {
  %2 = alloca %struct.locomo*, align 8
  store %struct.locomo* %0, %struct.locomo** %2, align 8
  %3 = load %struct.locomo*, %struct.locomo** %2, align 8
  %4 = getelementptr inbounds %struct.locomo, %struct.locomo* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @locomo_remove_child, align 4
  %7 = call i32 @device_for_each_child(i32 %5, i32* null, i32 %6)
  %8 = load %struct.locomo*, %struct.locomo** %2, align 8
  %9 = getelementptr inbounds %struct.locomo, %struct.locomo* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NO_IRQ, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.locomo*, %struct.locomo** %2, align 8
  %15 = getelementptr inbounds %struct.locomo, %struct.locomo* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @set_irq_chained_handler(i64 %16, i32* null)
  %18 = load %struct.locomo*, %struct.locomo** %2, align 8
  %19 = getelementptr inbounds %struct.locomo, %struct.locomo* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @set_irq_data(i64 %20, i32* null)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.locomo*, %struct.locomo** %2, align 8
  %24 = getelementptr inbounds %struct.locomo, %struct.locomo* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @iounmap(i32 %25)
  %27 = load %struct.locomo*, %struct.locomo** %2, align 8
  %28 = call i32 @kfree(%struct.locomo* %27)
  ret void
}

declare dso_local i32 @device_for_each_child(i32, i32*, i32) #1

declare dso_local i32 @set_irq_chained_handler(i64, i32*) #1

declare dso_local i32 @set_irq_data(i64, i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.locomo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
