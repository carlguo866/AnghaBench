; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_intc-5272.c_intc_external_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_intc-5272.c_intc_external_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.TYPE_2__ = type { i32 (i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @intc_external_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intc_external_irq(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %3 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %4 = call %struct.TYPE_2__* @irq_desc_get_chip(%struct.irq_desc* %3)
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32 (i32*)*, i32 (i32*)** %5, align 8
  %7 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %8 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %7, i32 0, i32 0
  %9 = call i32 %6(i32* %8)
  %10 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %11 = call i32 @handle_simple_irq(%struct.irq_desc* %10)
  ret void
}

declare dso_local %struct.TYPE_2__* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @handle_simple_irq(%struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
