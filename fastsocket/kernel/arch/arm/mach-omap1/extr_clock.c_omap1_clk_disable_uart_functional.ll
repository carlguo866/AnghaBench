; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_clock.c_omap1_clk_disable_uart_functional.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_clock.c_omap1_clk_disable_uart_functional.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.uart_clk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*)* @omap1_clk_disable_uart_functional to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap1_clk_disable_uart_functional(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca %struct.uart_clk*, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %4 = load %struct.clk*, %struct.clk** %2, align 8
  %5 = bitcast %struct.clk* %4 to %struct.uart_clk*
  store %struct.uart_clk* %5, %struct.uart_clk** %3, align 8
  %6 = load %struct.uart_clk*, %struct.uart_clk** %3, align 8
  %7 = getelementptr inbounds %struct.uart_clk, %struct.uart_clk* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @omap_readb(i32 %8)
  %10 = and i32 %9, -25
  %11 = load %struct.uart_clk*, %struct.uart_clk** %3, align 8
  %12 = getelementptr inbounds %struct.uart_clk, %struct.uart_clk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @omap_writeb(i32 %10, i32 %13)
  %15 = load %struct.clk*, %struct.clk** %2, align 8
  %16 = call i32 @omap1_clk_disable_generic(%struct.clk* %15)
  ret void
}

declare dso_local i32 @omap_writeb(i32, i32) #1

declare dso_local i32 @omap_readb(i32) #1

declare dso_local i32 @omap1_clk_disable_generic(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
