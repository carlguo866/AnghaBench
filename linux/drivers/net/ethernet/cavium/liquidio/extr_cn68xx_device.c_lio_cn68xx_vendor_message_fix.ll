; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn68xx_device.c_lio_cn68xx_vendor_message_fix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn68xx_device.c_lio_cn68xx_vendor_message_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }

@CN6XXX_PCIE_FLTMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @lio_cn68xx_vendor_message_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_cn68xx_vendor_message_fix(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %5 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CN6XXX_PCIE_FLTMSK, align 4
  %8 = call i32 @pci_read_config_dword(i32 %6, i32 %7, i32* %3)
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, 3
  store i32 %10, i32* %3, align 4
  %11 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CN6XXX_PCIE_FLTMSK, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @pci_write_config_dword(i32 %13, i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
