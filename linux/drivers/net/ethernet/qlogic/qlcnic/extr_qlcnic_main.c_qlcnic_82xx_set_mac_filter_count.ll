; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_82xx_set_mac_filter_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_82xx_set_mac_filter_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i32, i32, i32 }

@QLCNIC_MAX_MC_COUNT = common dso_local global i32 0, align 4
@QLCNIC_MAX_UC_COUNT = common dso_local global i32 0, align 4
@QLCNIC_LB_MAX_FILTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*)* @qlcnic_82xx_set_mac_filter_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_82xx_set_mac_filter_count(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlcnic_hardware_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %6 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %6, i32 0, i32 0
  %8 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %7, align 8
  store %struct.qlcnic_hardware_context* %8, %struct.qlcnic_hardware_context** %3, align 8
  %9 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %10 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @QLCNIC_MAX_MC_COUNT, align 4
  %13 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %14 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 %15, 2
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @QLCNIC_MAX_UC_COUNT, align 4
  %19 = load i32, i32* @QLCNIC_MAX_MC_COUNT, align 4
  %20 = sub nsw i32 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %5, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load i32, i32* @QLCNIC_LB_MAX_FILTERS, align 4
  %25 = load i32, i32* @QLCNIC_MAX_MC_COUNT, align 4
  %26 = sub nsw i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %23, %17
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %32 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
