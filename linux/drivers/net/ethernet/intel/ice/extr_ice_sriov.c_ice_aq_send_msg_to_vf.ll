; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sriov.c_ice_aq_send_msg_to_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sriov.c_ice_aq_send_msg_to_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_pf_vf_msg = type { i8* }
%struct.ice_aq_desc = type { i32, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ice_aqc_pf_vf_msg }

@ice_mbx_opc_send_msg_to_vf = common dso_local global i32 0, align 4
@ICE_AQ_FLAG_RD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_aq_send_msg_to_vf(%struct.ice_hw* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, %struct.ice_sq_cd* %6) #0 {
  %8 = alloca %struct.ice_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ice_sq_cd*, align 8
  %15 = alloca %struct.ice_aqc_pf_vf_msg*, align 8
  %16 = alloca %struct.ice_aq_desc, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.ice_sq_cd* %6, %struct.ice_sq_cd** %14, align 8
  %17 = load i32, i32* @ice_mbx_opc_send_msg_to_vf, align 4
  %18 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %16, i32 %17)
  %19 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %16, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.ice_aqc_pf_vf_msg* %20, %struct.ice_aqc_pf_vf_msg** %15, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i8* @cpu_to_le32(i32 %21)
  %23 = load %struct.ice_aqc_pf_vf_msg*, %struct.ice_aqc_pf_vf_msg** %15, align 8
  %24 = getelementptr inbounds %struct.ice_aqc_pf_vf_msg, %struct.ice_aqc_pf_vf_msg* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %16, i32 0, i32 2
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %16, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %7
  %34 = load i32, i32* @ICE_AQ_FLAG_RD, align 4
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %16, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %33, %7
  %40 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %41 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %42 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %41, i32 0, i32 0
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %14, align 8
  %46 = call i32 @ice_sq_send_cmd(%struct.ice_hw* %40, i32* %42, %struct.ice_aq_desc* %16, i32* %43, i32 %44, %struct.ice_sq_cd* %45)
  ret i32 %46
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ice_sq_send_cmd(%struct.ice_hw*, i32*, %struct.ice_aq_desc*, i32*, i32, %struct.ice_sq_cd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
