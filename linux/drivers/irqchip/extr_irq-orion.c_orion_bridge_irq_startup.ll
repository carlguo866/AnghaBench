; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-orion.c_orion_bridge_irq_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-orion.c_orion_bridge_irq_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_type = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*)* @orion_bridge_irq_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion_bridge_irq_startup(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_chip_type*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = call %struct.irq_chip_type* @irq_data_get_chip_type(%struct.irq_data* %4)
  store %struct.irq_chip_type* %5, %struct.irq_chip_type** %3, align 8
  %6 = load %struct.irq_chip_type*, %struct.irq_chip_type** %3, align 8
  %7 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %8, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %11 = call i32 %9(%struct.irq_data* %10)
  %12 = load %struct.irq_chip_type*, %struct.irq_chip_type** %3, align 8
  %13 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %14, align 8
  %16 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %17 = call i32 %15(%struct.irq_data* %16)
  ret i32 0
}

declare dso_local %struct.irq_chip_type* @irq_data_get_chip_type(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
