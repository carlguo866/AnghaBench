; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ftintc010.c_ft010_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ftintc010.c_ft010_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.ft010_irq_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ft010_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ft010_irq_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.ft010_irq_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = call %struct.ft010_irq_data* @irq_data_get_irq_chip_data(%struct.irq_data* %4)
  store %struct.ft010_irq_data* %5, %struct.ft010_irq_data** %3, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call i32 @irqd_to_hwirq(%struct.irq_data* %6)
  %8 = call i32 @BIT(i32 %7)
  %9 = load %struct.ft010_irq_data*, %struct.ft010_irq_data** %3, align 8
  %10 = getelementptr inbounds %struct.ft010_irq_data, %struct.ft010_irq_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @FT010_IRQ_CLEAR(i32 %11)
  %13 = call i32 @writel(i32 %8, i32 %12)
  ret void
}

declare dso_local %struct.ft010_irq_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @FT010_IRQ_CLEAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
