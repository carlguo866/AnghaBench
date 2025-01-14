; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_axi_io_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_axi_io_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@PCIE_AXI_CTRL_SLV_CTRL_IO_BAR_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @al_pcie_axi_io_config(%struct.al_pcie_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.al_pcie_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.al_pcie_regs*, align 8
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %9 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %8, i32 0, i32 0
  %10 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %9, align 8
  store %struct.al_pcie_regs* %10, %struct.al_pcie_regs** %7, align 8
  %11 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %7, align 8
  %12 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 32
  %18 = call i32 @al_reg_write32(i32 %15, i32 %17)
  %19 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %7, align 8
  %20 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @al_reg_write32(i32 %23, i32 %24)
  %26 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %7, align 8
  %27 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 32
  %33 = call i32 @al_reg_write32(i32 %30, i32 %32)
  %34 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %7, align 8
  %35 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @al_reg_write32(i32 %38, i32 %39)
  %41 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %7, align 8
  %42 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PCIE_AXI_CTRL_SLV_CTRL_IO_BAR_EN, align 4
  %47 = load i32, i32* @PCIE_AXI_CTRL_SLV_CTRL_IO_BAR_EN, align 4
  %48 = call i32 @al_reg_write32_masked(i32 %45, i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @al_reg_write32(i32, i32) #1

declare dso_local i32 @al_reg_write32_masked(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
