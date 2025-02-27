; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_nic.h_octnet_prepare_pci_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_nic.h_octnet_prepare_pci_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }
%union.octeon_instr_64B = type { i32 }
%union.octnic_cmd_setup = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, %union.octeon_instr_64B*, %union.octnic_cmd_setup*, i32)* @octnet_prepare_pci_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octnet_prepare_pci_cmd(%struct.octeon_device* %0, %union.octeon_instr_64B* %1, %union.octnic_cmd_setup* %2, i32 %3) #0 {
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca %union.octeon_instr_64B*, align 8
  %7 = alloca %union.octnic_cmd_setup*, align 8
  %8 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %5, align 8
  store %union.octeon_instr_64B* %1, %union.octeon_instr_64B** %6, align 8
  store %union.octnic_cmd_setup* %2, %union.octnic_cmd_setup** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %10 = call i64 @OCTEON_CN6XXX(%struct.octeon_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %14 = load %union.octeon_instr_64B*, %union.octeon_instr_64B** %6, align 8
  %15 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @octnet_prepare_pci_cmd_o2(%struct.octeon_device* %13, %union.octeon_instr_64B* %14, %union.octnic_cmd_setup* %15, i32 %16)
  br label %24

18:                                               ; preds = %4
  %19 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %20 = load %union.octeon_instr_64B*, %union.octeon_instr_64B** %6, align 8
  %21 = load %union.octnic_cmd_setup*, %union.octnic_cmd_setup** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @octnet_prepare_pci_cmd_o3(%struct.octeon_device* %19, %union.octeon_instr_64B* %20, %union.octnic_cmd_setup* %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %12
  ret void
}

declare dso_local i64 @OCTEON_CN6XXX(%struct.octeon_device*) #1

declare dso_local i32 @octnet_prepare_pci_cmd_o2(%struct.octeon_device*, %union.octeon_instr_64B*, %union.octnic_cmd_setup*, i32) #1

declare dso_local i32 @octnet_prepare_pci_cmd_o3(%struct.octeon_device*, %union.octeon_instr_64B*, %union.octnic_cmd_setup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
