; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_vlan_port_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_vlan_port_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot = type { i32 }
%struct.ocelot_port = type { i32, i64, i64, i32 }

@ANA_PORT_VLAN_CFG_VLAN_AWARE_ENA = common dso_local global i32 0, align 4
@ANA_PORT_VLAN_CFG_VLAN_VID_M = common dso_local global i32 0, align 4
@ANA_PORT_VLAN_CFG_VLAN_POP_CNT_M = common dso_local global i32 0, align 4
@ANA_PORT_VLAN_CFG = common dso_local global i32 0, align 4
@ANA_PORT_DROP_CFG_DROP_MC_SMAC_ENA = common dso_local global i32 0, align 4
@ANA_PORT_DROP_CFG_DROP_UNTAGGED_ENA = common dso_local global i32 0, align 4
@ANA_PORT_DROP_CFG_DROP_PRIO_S_TAGGED_ENA = common dso_local global i32 0, align 4
@ANA_PORT_DROP_CFG_DROP_PRIO_C_TAGGED_ENA = common dso_local global i32 0, align 4
@ANA_PORT_DROP_CFG = common dso_local global i32 0, align 4
@REW_TAG_CFG_TAG_TPID_CFG_M = common dso_local global i32 0, align 4
@REW_TAG_CFG_TAG_CFG_M = common dso_local global i32 0, align 4
@REW_TAG_CFG = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@REW_PORT_VLAN_CFG_PORT_TPID_M = common dso_local global i32 0, align 4
@REW_PORT_VLAN_CFG_PORT_VID_M = common dso_local global i32 0, align 4
@REW_PORT_VLAN_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocelot*, %struct.ocelot_port*)* @ocelot_vlan_port_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocelot_vlan_port_apply(%struct.ocelot* %0, %struct.ocelot_port* %1) #0 {
  %3 = alloca %struct.ocelot*, align 8
  %4 = alloca %struct.ocelot_port*, align 8
  %5 = alloca i32, align 4
  store %struct.ocelot* %0, %struct.ocelot** %3, align 8
  store %struct.ocelot_port* %1, %struct.ocelot_port** %4, align 8
  %6 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %7 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @ANA_PORT_VLAN_CFG_VLAN_VID(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %11 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @ANA_PORT_VLAN_CFG_VLAN_AWARE_ENA, align 4
  %16 = call i32 @ANA_PORT_VLAN_CFG_VLAN_POP_CNT(i32 1)
  %17 = or i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ANA_PORT_VLAN_CFG_VLAN_VID_M, align 4
  %24 = load i32, i32* @ANA_PORT_VLAN_CFG_VLAN_AWARE_ENA, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @ANA_PORT_VLAN_CFG_VLAN_POP_CNT_M, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @ANA_PORT_VLAN_CFG, align 4
  %29 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %30 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ocelot_rmw_gix(%struct.ocelot* %21, i32 %22, i32 %27, i32 %28, i32 %31)
  %33 = load i32, i32* @ANA_PORT_DROP_CFG_DROP_MC_SMAC_ENA, align 4
  store i32 %33, i32* %5, align 4
  %34 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %35 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %20
  %39 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %40 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ANA_PORT_DROP_CFG_DROP_UNTAGGED_ENA, align 4
  %45 = load i32, i32* @ANA_PORT_DROP_CFG_DROP_PRIO_S_TAGGED_ENA, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @ANA_PORT_DROP_CFG_DROP_PRIO_C_TAGGED_ENA, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %43, %38, %20
  %52 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @ANA_PORT_DROP_CFG, align 4
  %55 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %56 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ocelot_write_gix(%struct.ocelot* %52, i32 %53, i32 %54, i32 %57)
  %59 = call i32 @REW_TAG_CFG_TAG_TPID_CFG(i32 0)
  store i32 %59, i32* %5, align 4
  %60 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %61 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %51
  %65 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %66 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = call i32 @REW_TAG_CFG_TAG_CFG(i32 1)
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %77

73:                                               ; preds = %64
  %74 = call i32 @REW_TAG_CFG_TAG_CFG(i32 3)
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %51
  %79 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @REW_TAG_CFG_TAG_TPID_CFG_M, align 4
  %82 = load i32, i32* @REW_TAG_CFG_TAG_CFG_M, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @REW_TAG_CFG, align 4
  %85 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %86 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ocelot_rmw_gix(%struct.ocelot* %79, i32 %80, i32 %83, i32 %84, i32 %87)
  %89 = load i32, i32* @ETH_P_8021Q, align 4
  %90 = call i32 @REW_PORT_VLAN_CFG_PORT_TPID(i32 %89)
  %91 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %92 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @REW_PORT_VLAN_CFG_PORT_VID(i64 %93)
  %95 = or i32 %90, %94
  store i32 %95, i32* %5, align 4
  %96 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @REW_PORT_VLAN_CFG_PORT_TPID_M, align 4
  %99 = load i32, i32* @REW_PORT_VLAN_CFG_PORT_VID_M, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @REW_PORT_VLAN_CFG, align 4
  %102 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %103 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @ocelot_rmw_gix(%struct.ocelot* %96, i32 %97, i32 %100, i32 %101, i32 %104)
  ret void
}

declare dso_local i32 @ANA_PORT_VLAN_CFG_VLAN_VID(i32) #1

declare dso_local i32 @ANA_PORT_VLAN_CFG_VLAN_POP_CNT(i32) #1

declare dso_local i32 @ocelot_rmw_gix(%struct.ocelot*, i32, i32, i32, i32) #1

declare dso_local i32 @ocelot_write_gix(%struct.ocelot*, i32, i32, i32) #1

declare dso_local i32 @REW_TAG_CFG_TAG_TPID_CFG(i32) #1

declare dso_local i32 @REW_TAG_CFG_TAG_CFG(i32) #1

declare dso_local i32 @REW_PORT_VLAN_CFG_PORT_TPID(i32) #1

declare dso_local i32 @REW_PORT_VLAN_CFG_PORT_VID(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
