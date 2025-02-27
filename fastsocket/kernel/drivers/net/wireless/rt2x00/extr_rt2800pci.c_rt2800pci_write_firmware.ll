; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800pci.c_rt2800pci_write_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800pci.c_rt2800pci_write_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@PBF_SYS_CTRL_HOST_RAM_WRITE = common dso_local global i32 0, align 4
@PBF_SYS_CTRL = common dso_local global i32 0, align 4
@FIRMWARE_IMAGE_BASE = common dso_local global i32 0, align 4
@H2M_BBP_AGENT = common dso_local global i32 0, align 4
@H2M_MAILBOX_CSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, i32*, i64)* @rt2800pci_write_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800pci_write_firmware(%struct.rt2x00_dev* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @PBF_SYS_CTRL_HOST_RAM_WRITE, align 4
  %9 = call i32 @rt2x00_set_field32(i32* %7, i32 %8, i32 1)
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %11 = load i32, i32* @PBF_SYS_CTRL, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %10, i32 %11, i32 %12)
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %15 = load i32, i32* @FIRMWARE_IMAGE_BASE, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev* %14, i32 %15, i32* %16, i64 %17)
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %20 = load i32, i32* @PBF_SYS_CTRL, align 4
  %21 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %19, i32 %20, i32 0)
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %23 = load i32, i32* @PBF_SYS_CTRL, align 4
  %24 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %22, i32 %23, i32 1)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %26 = load i32, i32* @H2M_BBP_AGENT, align 4
  %27 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %25, i32 %26, i32 0)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %29 = load i32, i32* @H2M_MAILBOX_CSR, align 4
  %30 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %28, i32 %29, i32 0)
  ret i32 0
}

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
