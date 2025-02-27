; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_trans_pcie_set_q_ptrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_trans_pcie_set_q_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { %struct.iwl_txq** }
%struct.iwl_txq = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_trans_pcie_set_q_ptrs(%struct.iwl_trans* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_trans_pcie*, align 8
  %8 = alloca %struct.iwl_txq*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %10 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %9)
  store %struct.iwl_trans_pcie* %10, %struct.iwl_trans_pcie** %7, align 8
  %11 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %12 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %11, i32 0, i32 0
  %13 = load %struct.iwl_txq**, %struct.iwl_txq*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.iwl_txq*, %struct.iwl_txq** %13, i64 %15
  %17 = load %struct.iwl_txq*, %struct.iwl_txq** %16, align 8
  store %struct.iwl_txq* %17, %struct.iwl_txq** %8, align 8
  %18 = load %struct.iwl_txq*, %struct.iwl_txq** %8, align 8
  %19 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %18, i32 0, i32 2
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.iwl_txq*, %struct.iwl_txq** %8, align 8
  %23 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.iwl_txq*, %struct.iwl_txq** %8, align 8
  %25 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iwl_txq*, %struct.iwl_txq** %8, align 8
  %28 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.iwl_txq*, %struct.iwl_txq** %8, align 8
  %30 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %29, i32 0, i32 2
  %31 = call i32 @spin_unlock_bh(i32* %30)
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
