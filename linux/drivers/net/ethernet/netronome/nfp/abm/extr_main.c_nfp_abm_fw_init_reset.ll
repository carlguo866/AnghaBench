; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_fw_init_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_fw_init_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm = type { i32, i32 }

@NFP_NET_MAX_RX_RINGS = common dso_local global i32 0, align 4
@NFP_ABM_LVL_INFINITY = common dso_local global i32 0, align 4
@NFP_ABM_ACT_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_abm*)* @nfp_abm_fw_init_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_fw_init_reset(%struct.nfp_abm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_abm*, align 8
  %4 = alloca i32, align 4
  store %struct.nfp_abm* %0, %struct.nfp_abm** %3, align 8
  %5 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %6 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %28, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %14 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NFP_NET_MAX_RX_RINGS, align 4
  %17 = mul i32 %15, %16
  %18 = icmp ult i32 %12, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %11
  %20 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @NFP_ABM_LVL_INFINITY, align 4
  %23 = call i32 @__nfp_abm_ctrl_set_q_lvl(%struct.nfp_abm* %20, i32 %21, i32 %22)
  %24 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @NFP_ABM_ACT_DROP, align 4
  %27 = call i32 @__nfp_abm_ctrl_set_q_act(%struct.nfp_abm* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %11

31:                                               ; preds = %11
  %32 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %33 = call i32 @nfp_abm_ctrl_qm_disable(%struct.nfp_abm* %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @__nfp_abm_ctrl_set_q_lvl(%struct.nfp_abm*, i32, i32) #1

declare dso_local i32 @__nfp_abm_ctrl_set_q_act(%struct.nfp_abm*, i32, i32) #1

declare dso_local i32 @nfp_abm_ctrl_qm_disable(%struct.nfp_abm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
