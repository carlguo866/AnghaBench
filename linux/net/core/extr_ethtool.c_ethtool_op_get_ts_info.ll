; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_ethtool.c_ethtool_op_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_ethtool.c_ethtool_op_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ts_info = type { i32, i32 }

@SOF_TIMESTAMPING_TX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_SOFTWARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ethtool_op_get_ts_info(%struct.net_device* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ts_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %4, align 8
  %5 = load i32, i32* @SOF_TIMESTAMPING_TX_SOFTWARE, align 4
  %6 = load i32, i32* @SOF_TIMESTAMPING_RX_SOFTWARE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @SOF_TIMESTAMPING_SOFTWARE, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %12, i32 0, i32 1
  store i32 -1, i32* %13, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
