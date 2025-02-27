; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fjes_adapter = type { i32, i32, %struct.fjes_hw, i32 }
%struct.fjes_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@REG_ICTL_MASK_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fjes_adapter*)* @fjes_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fjes_free_irq(%struct.fjes_adapter* %0) #0 {
  %2 = alloca %struct.fjes_adapter*, align 8
  %3 = alloca %struct.fjes_hw*, align 8
  store %struct.fjes_adapter* %0, %struct.fjes_adapter** %2, align 8
  %4 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %4, i32 0, i32 2
  store %struct.fjes_hw* %5, %struct.fjes_hw** %3, align 8
  %6 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %8, i32 0, i32 3
  %10 = call i32 @cancel_delayed_work_sync(i32* %9)
  %11 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %12 = load i32, i32* @REG_ICTL_MASK_ALL, align 4
  %13 = call i32 @fjes_hw_set_irqmask(%struct.fjes_hw* %11, i32 %12, i32 1)
  %14 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %25 = call i32 @free_irq(i32 %23, %struct.fjes_adapter* %24)
  %26 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @fjes_hw_set_irqmask(%struct.fjes_hw*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.fjes_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
