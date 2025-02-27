; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson32/common/extr_irq.c_ls1x_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson32/common/extr_irq.c_ls1x_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@LS1X_IRQ_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ls1x_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ls1x_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @LS1X_IRQ_BASE, align 4
  %9 = sub nsw i32 %7, %8
  %10 = and i32 %9, 31
  store i32 %10, i32* %3, align 4
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LS1X_IRQ_BASE, align 4
  %15 = sub nsw i32 %13, %14
  %16 = ashr i32 %15, 5
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @LS1X_INTC_INTIEN(i32 %17)
  %19 = call i32 @__raw_readl(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = shl i32 1, %20
  %22 = or i32 %19, %21
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @LS1X_INTC_INTIEN(i32 %23)
  %25 = call i32 @__raw_writel(i32 %22, i32 %24)
  ret void
}

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @LS1X_INTC_INTIEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
