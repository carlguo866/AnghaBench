; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_aq_get_sw_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_aq_get_sw_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_aqc_get_sw_cfg_resp = type { i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_get_sw_cfg = type { i32, i32 }
%struct.ice_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ice_aqc_get_sw_cfg }

@ice_aqc_opc_get_sw_cfg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, %struct.ice_aqc_get_sw_cfg_resp*, i32, i32*, i32*, %struct.ice_sq_cd*)* @ice_aq_get_sw_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_aq_get_sw_cfg(%struct.ice_hw* %0, %struct.ice_aqc_get_sw_cfg_resp* %1, i32 %2, i32* %3, i32* %4, %struct.ice_sq_cd* %5) #0 {
  %7 = alloca %struct.ice_hw*, align 8
  %8 = alloca %struct.ice_aqc_get_sw_cfg_resp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ice_sq_cd*, align 8
  %13 = alloca %struct.ice_aqc_get_sw_cfg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ice_aq_desc, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %7, align 8
  store %struct.ice_aqc_get_sw_cfg_resp* %1, %struct.ice_aqc_get_sw_cfg_resp** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.ice_sq_cd* %5, %struct.ice_sq_cd** %12, align 8
  %16 = load i32, i32* @ice_aqc_opc_get_sw_cfg, align 4
  %17 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %15, i32 %16)
  %18 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %15, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.ice_aqc_get_sw_cfg* %19, %struct.ice_aqc_get_sw_cfg** %13, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cpu_to_le16(i32 %21)
  %23 = load %struct.ice_aqc_get_sw_cfg*, %struct.ice_aqc_get_sw_cfg** %13, align 8
  %24 = getelementptr inbounds %struct.ice_aqc_get_sw_cfg, %struct.ice_aqc_get_sw_cfg* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %26 = load %struct.ice_aqc_get_sw_cfg_resp*, %struct.ice_aqc_get_sw_cfg_resp** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %12, align 8
  %29 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %25, %struct.ice_aq_desc* %15, %struct.ice_aqc_get_sw_cfg_resp* %26, i32 %27, %struct.ice_sq_cd* %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %6
  %33 = load %struct.ice_aqc_get_sw_cfg*, %struct.ice_aqc_get_sw_cfg** %13, align 8
  %34 = getelementptr inbounds %struct.ice_aqc_get_sw_cfg, %struct.ice_aqc_get_sw_cfg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le16_to_cpu(i32 %35)
  %37 = load i32*, i32** %10, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.ice_aqc_get_sw_cfg*, %struct.ice_aqc_get_sw_cfg** %13, align 8
  %39 = getelementptr inbounds %struct.ice_aqc_get_sw_cfg, %struct.ice_aqc_get_sw_cfg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le16_to_cpu(i32 %40)
  %42 = load i32*, i32** %11, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %32, %6
  %44 = load i32, i32* %14, align 4
  ret i32 %44
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, %struct.ice_aqc_get_sw_cfg_resp*, i32, %struct.ice_sq_cd*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
