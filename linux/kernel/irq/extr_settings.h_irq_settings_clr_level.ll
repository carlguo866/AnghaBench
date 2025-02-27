; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_settings.h_irq_settings_clr_level.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_settings.h_irq_settings_clr_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@_IRQ_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @irq_settings_clr_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_settings_clr_level(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %3 = load i32, i32* @_IRQ_LEVEL, align 4
  %4 = xor i32 %3, -1
  %5 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %6 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, %4
  store i32 %8, i32* %6, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
