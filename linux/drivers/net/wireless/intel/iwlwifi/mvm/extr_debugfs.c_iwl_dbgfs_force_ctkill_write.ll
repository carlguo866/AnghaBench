; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_force_ctkill_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_force_ctkill_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IWL_UCODE_REGULAR = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iwl_mvm*, i8*, i64, i32*)* @iwl_dbgfs_force_ctkill_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwl_dbgfs_force_ctkill_write(%struct.iwl_mvm* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %11 = call i32 @iwl_mvm_firmware_running(%struct.iwl_mvm* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IWL_UCODE_REGULAR, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13, %4
  %21 = load i64, i64* @EIO, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %5, align 8
  br label %27

23:                                               ; preds = %13
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %25 = call i32 @iwl_mvm_enter_ctkill(%struct.iwl_mvm* %24)
  %26 = load i64, i64* %8, align 8
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i64, i64* %5, align 8
  ret i64 %28
}

declare dso_local i32 @iwl_mvm_firmware_running(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_enter_ctkill(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
