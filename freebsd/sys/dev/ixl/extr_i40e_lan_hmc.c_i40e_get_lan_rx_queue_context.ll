; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_lan_hmc.c_i40e_get_lan_rx_queue_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_lan_hmc.c_i40e_get_lan_rx_queue_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_hmc_obj_rxq = type { i32 }

@I40E_HMC_LAN_RX = common dso_local global i32 0, align 4
@i40e_hmc_rxq_ce_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_get_lan_rx_queue_context(%struct.i40e_hw* %0, i32 %1, %struct.i40e_hmc_obj_rxq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_hmc_obj_rxq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i40e_hmc_obj_rxq* %2, %struct.i40e_hmc_obj_rxq** %7, align 8
  %10 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %11 = load i32, i32* @I40E_HMC_LAN_RX, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @i40e_hmc_get_object_va(%struct.i40e_hw* %10, i32** %9, i32 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ult i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %24

18:                                               ; preds = %3
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* @i40e_hmc_rxq_ce_info, align 4
  %21 = load %struct.i40e_hmc_obj_rxq*, %struct.i40e_hmc_obj_rxq** %7, align 8
  %22 = bitcast %struct.i40e_hmc_obj_rxq* %21 to i32*
  %23 = call i32 @i40e_get_hmc_context(i32* %19, i32 %20, i32* %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %18, %16
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @i40e_hmc_get_object_va(%struct.i40e_hw*, i32**, i32, i32) #1

declare dso_local i32 @i40e_get_hmc_context(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
