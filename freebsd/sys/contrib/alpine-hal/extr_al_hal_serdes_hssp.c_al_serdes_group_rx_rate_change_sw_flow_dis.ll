; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_hssp.c_al_serdes_group_rx_rate_change_sw_flow_dis.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_hssp.c_al_serdes_group_rx_rate_change_sw_flow_dis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_serdes_grp_obj = type { i32 }

@AL_SRDS_LANE_0 = common dso_local global i32 0, align 4
@AL_SRDS_NUM_LANES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_serdes_grp_obj*)* @al_serdes_group_rx_rate_change_sw_flow_dis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_serdes_group_rx_rate_change_sw_flow_dis(%struct.al_serdes_grp_obj* %0) #0 {
  %2 = alloca %struct.al_serdes_grp_obj*, align 8
  %3 = alloca i32, align 4
  store %struct.al_serdes_grp_obj* %0, %struct.al_serdes_grp_obj** %2, align 8
  %4 = load i32, i32* @AL_SRDS_LANE_0, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %13, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @AL_SRDS_NUM_LANES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @_al_serdes_lane_rx_rate_change_sw_flow_dis(%struct.al_serdes_grp_obj* %10, i32 %11)
  br label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %5

16:                                               ; preds = %5
  ret void
}

declare dso_local i32 @_al_serdes_lane_rx_rate_change_sw_flow_dis(%struct.al_serdes_grp_obj*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
