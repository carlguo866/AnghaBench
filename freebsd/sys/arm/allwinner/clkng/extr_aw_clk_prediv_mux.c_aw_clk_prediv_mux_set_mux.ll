; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_prediv_mux.c_aw_clk_prediv_mux_set_mux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_prediv_mux.c_aw_clk_prediv_mux_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.aw_clk_prediv_mux_sc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @aw_clk_prediv_mux_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_clk_prediv_mux_set_mux(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aw_clk_prediv_mux_sc*, align 8
  %6 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.clknode*, %struct.clknode** %3, align 8
  %8 = call %struct.aw_clk_prediv_mux_sc* @clknode_get_softc(%struct.clknode* %7)
  store %struct.aw_clk_prediv_mux_sc* %8, %struct.aw_clk_prediv_mux_sc** %5, align 8
  %9 = load %struct.clknode*, %struct.clknode** %3, align 8
  %10 = call i32 @DEVICE_LOCK(%struct.clknode* %9)
  %11 = load %struct.clknode*, %struct.clknode** %3, align 8
  %12 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %5, align 8
  %13 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @READ4(%struct.clknode* %11, i32 %14, i32* %6)
  %16 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %5, align 8
  %17 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %5, align 8
  %24 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %22, %25
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.clknode*, %struct.clknode** %3, align 8
  %30 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %5, align 8
  %31 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @WRITE4(%struct.clknode* %29, i32 %32, i32 %33)
  %35 = load %struct.clknode*, %struct.clknode** %3, align 8
  %36 = call i32 @DEVICE_UNLOCK(%struct.clknode* %35)
  ret i32 0
}

declare dso_local %struct.aw_clk_prediv_mux_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @READ4(%struct.clknode*, i32, i32*) #1

declare dso_local i32 @WRITE4(%struct.clknode*, i32, i32) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
