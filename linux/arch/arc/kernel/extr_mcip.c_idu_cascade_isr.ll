; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_mcip.c_idu_cascade_isr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_mcip.c_idu_cascade_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_domain = type { i32 }
%struct.irq_chip = type { i32 }

@FIRST_EXT_IRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @idu_cascade_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idu_cascade_isr(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_domain*, align 8
  %4 = alloca %struct.irq_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %7 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %8 = call %struct.irq_domain* @irq_desc_get_handler_data(%struct.irq_desc* %7)
  store %struct.irq_domain* %8, %struct.irq_domain** %3, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %10 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %9)
  store %struct.irq_chip* %10, %struct.irq_chip** %4, align 8
  %11 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %12 = call i32 @irq_desc_get_irq_data(%struct.irq_desc* %11)
  %13 = call i64 @irqd_to_hwirq(i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @FIRST_EXT_IRQ, align 8
  %16 = sub nsw i64 %14, %15
  store i64 %16, i64* %6, align 8
  %17 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %18 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %19 = call i32 @chained_irq_enter(%struct.irq_chip* %17, %struct.irq_desc* %18)
  %20 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @irq_find_mapping(%struct.irq_domain* %20, i64 %21)
  %23 = call i32 @generic_handle_irq(i32 %22)
  %24 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %25 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %26 = call i32 @chained_irq_exit(%struct.irq_chip* %24, %struct.irq_desc* %25)
  ret void
}

declare dso_local %struct.irq_domain* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i64 @irqd_to_hwirq(i32) #1

declare dso_local i32 @irq_desc_get_irq_data(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irq_find_mapping(%struct.irq_domain*, i64) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
