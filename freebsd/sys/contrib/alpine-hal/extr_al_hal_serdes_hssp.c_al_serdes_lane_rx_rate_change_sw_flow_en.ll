; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_hssp.c_al_serdes_lane_rx_rate_change_sw_flow_en.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_hssp.c_al_serdes_lane_rx_rate_change_sw_flow_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_serdes_grp_obj = type { i32 }

@AL_SRDS_REG_TYPE_PMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_serdes_grp_obj*, i32)* @al_serdes_lane_rx_rate_change_sw_flow_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_serdes_lane_rx_rate_change_sw_flow_en(%struct.al_serdes_grp_obj* %0, i32 %1) #0 {
  %3 = alloca %struct.al_serdes_grp_obj*, align 8
  %4 = alloca i32, align 4
  store %struct.al_serdes_grp_obj* %0, %struct.al_serdes_grp_obj** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %8 = call i32 @al_serdes_reg_write(%struct.al_serdes_grp_obj* %5, i32 %6, i32 %7, i32 201, i32 252)
  %9 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %12 = call i32 @al_serdes_reg_write(%struct.al_serdes_grp_obj* %9, i32 %10, i32 %11, i32 202, i32 255)
  %13 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %16 = call i32 @al_serdes_reg_write(%struct.al_serdes_grp_obj* %13, i32 %14, i32 %15, i32 203, i32 255)
  %17 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %20 = call i32 @al_serdes_reg_write(%struct.al_serdes_grp_obj* %17, i32 %18, i32 %19, i32 204, i32 255)
  %21 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %24 = call i32 @al_serdes_reg_write(%struct.al_serdes_grp_obj* %21, i32 %22, i32 %23, i32 205, i32 127)
  %25 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %28 = call i32 @al_serdes_reg_write(%struct.al_serdes_grp_obj* %25, i32 %26, i32 %27, i32 205, i32 255)
  ret void
}

declare dso_local i32 @al_serdes_reg_write(%struct.al_serdes_grp_obj*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
