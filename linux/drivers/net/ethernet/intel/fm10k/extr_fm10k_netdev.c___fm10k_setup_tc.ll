; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c___fm10k_setup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c___fm10k_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tc_mqprio_qopt = type { i32, i32 }

@TC_SETUP_QDISC_MQPRIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TC_MQPRIO_HW_OFFLOAD_TCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i8*)* @__fm10k_setup_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fm10k_setup_tc(%struct.net_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tc_mqprio_qopt*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.tc_mqprio_qopt*
  store %struct.tc_mqprio_qopt* %10, %struct.tc_mqprio_qopt** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @TC_SETUP_QDISC_MQPRIO, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %26

17:                                               ; preds = %3
  %18 = load i32, i32* @TC_MQPRIO_HW_OFFLOAD_TCS, align 4
  %19 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %8, align 8
  %20 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %8, align 8
  %23 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @fm10k_setup_tc(%struct.net_device* %21, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %17, %14
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @fm10k_setup_tc(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
