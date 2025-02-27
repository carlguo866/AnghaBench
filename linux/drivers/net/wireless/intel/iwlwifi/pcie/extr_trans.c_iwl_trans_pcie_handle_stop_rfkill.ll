; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_handle_stop_rfkill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_handle_stop_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }

@STATUS_RFKILL_HW = common dso_local global i32 0, align 4
@STATUS_RFKILL_OPMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_trans_pcie_handle_stop_rfkill(%struct.iwl_trans* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %7 = call i32 @iwl_is_rfkill_set(%struct.iwl_trans* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i32, i32* @STATUS_RFKILL_HW, align 4
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %12, i32 0, i32 0
  %14 = call i32 @set_bit(i32 %11, i32* %13)
  %15 = load i32, i32* @STATUS_RFKILL_OPMODE, align 4
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %17 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %16, i32 0, i32 0
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  br label %28

19:                                               ; preds = %2
  %20 = load i32, i32* @STATUS_RFKILL_HW, align 4
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %22 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %21, i32 0, i32 0
  %23 = call i32 @clear_bit(i32 %20, i32* %22)
  %24 = load i32, i32* @STATUS_RFKILL_OPMODE, align 4
  %25 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %26 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %25, i32 0, i32 0
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  br label %28

28:                                               ; preds = %19, %10
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @iwl_trans_pcie_rf_kill(%struct.iwl_trans* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  ret void
}

declare dso_local i32 @iwl_is_rfkill_set(%struct.iwl_trans*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iwl_trans_pcie_rf_kill(%struct.iwl_trans*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
