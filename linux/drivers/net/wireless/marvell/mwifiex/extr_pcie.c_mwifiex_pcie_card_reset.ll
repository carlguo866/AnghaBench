; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_card_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_card_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { i32, i32 }

@MWIFIEX_IFACE_WORK_CARD_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*)* @mwifiex_pcie_card_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_pcie_card_reset(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.pcie_service_card*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %4 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %4, i32 0, i32 0
  %6 = load %struct.pcie_service_card*, %struct.pcie_service_card** %5, align 8
  store %struct.pcie_service_card* %6, %struct.pcie_service_card** %3, align 8
  %7 = load i32, i32* @MWIFIEX_IFACE_WORK_CARD_RESET, align 4
  %8 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %9 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %8, i32 0, i32 1
  %10 = call i32 @test_and_set_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %14 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %13, i32 0, i32 0
  %15 = call i32 @schedule_work(i32* %14)
  br label %16

16:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
