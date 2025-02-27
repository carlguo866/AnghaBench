; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_get_systime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_get_systime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@DEVICE_SYSTEM_TIME_REG = common dso_local global i64 0, align 8
@IWL_DEVICE_FAMILY_22000 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @iwl_mvm_get_systime(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %4 = load i64, i64* @DEVICE_SYSTEM_TIME_REG, align 8
  store i64 %4, i64* %3, align 8
  %5 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %6 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IWL_DEVICE_FAMILY_22000, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %23, %14, %1
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i64, i64* %3, align 8
  %36 = call i64 @iwl_read_prph(%struct.TYPE_6__* %34, i64 %35)
  ret i64 %36
}

declare dso_local i64 @iwl_read_prph(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
