; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_plic.c_plic_disable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_plic.c_plic_disable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.plic_softc = type { i32 }
%struct.plic_irqsrc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.intr_irqsrc*)* @plic_disable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plic_disable_intr(i32 %0, %struct.intr_irqsrc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intr_irqsrc*, align 8
  %5 = alloca %struct.plic_softc*, align 8
  %6 = alloca %struct.plic_irqsrc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.plic_softc* @device_get_softc(i32 %7)
  store %struct.plic_softc* %8, %struct.plic_softc** %5, align 8
  %9 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %4, align 8
  %10 = bitcast %struct.intr_irqsrc* %9 to %struct.plic_irqsrc*
  store %struct.plic_irqsrc* %10, %struct.plic_irqsrc** %6, align 8
  %11 = load %struct.plic_softc*, %struct.plic_softc** %5, align 8
  %12 = load %struct.plic_irqsrc*, %struct.plic_irqsrc** %6, align 8
  %13 = getelementptr inbounds %struct.plic_irqsrc, %struct.plic_irqsrc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @PLIC_PRIORITY(i32 %14)
  %16 = call i32 @WR4(%struct.plic_softc* %11, i32 %15, i32 0)
  ret void
}

declare dso_local %struct.plic_softc* @device_get_softc(i32) #1

declare dso_local i32 @WR4(%struct.plic_softc*, i32, i32) #1

declare dso_local i32 @PLIC_PRIORITY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
