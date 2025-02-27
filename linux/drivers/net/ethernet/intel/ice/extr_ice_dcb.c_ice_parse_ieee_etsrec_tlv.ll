; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_parse_ieee_etsrec_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_parse_ieee_etsrec_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_lldp_org_tlv = type { i32* }
%struct.ice_dcbx_cfg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_lldp_org_tlv*, %struct.ice_dcbx_cfg*)* @ice_parse_ieee_etsrec_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_parse_ieee_etsrec_tlv(%struct.ice_lldp_org_tlv* %0, %struct.ice_dcbx_cfg* %1) #0 {
  %3 = alloca %struct.ice_lldp_org_tlv*, align 8
  %4 = alloca %struct.ice_dcbx_cfg*, align 8
  %5 = alloca i32*, align 8
  store %struct.ice_lldp_org_tlv* %0, %struct.ice_lldp_org_tlv** %3, align 8
  store %struct.ice_dcbx_cfg* %1, %struct.ice_dcbx_cfg** %4, align 8
  %6 = load %struct.ice_lldp_org_tlv*, %struct.ice_lldp_org_tlv** %3, align 8
  %7 = getelementptr inbounds %struct.ice_lldp_org_tlv, %struct.ice_lldp_org_tlv* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %4, align 8
  %12 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %11, i32 0, i32 0
  %13 = call i32 @ice_parse_ieee_ets_common_tlv(i32* %10, i32* %12)
  ret void
}

declare dso_local i32 @ice_parse_ieee_ets_common_tlv(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
