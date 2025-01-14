; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_tbl_line_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_tbl_line_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32 }
%struct.dsaf_tbl_line_cfg = type { i32, i32, i32 }

@DSAF_TBL_LIN_CFG_0_REG = common dso_local global i32 0, align 4
@DSAF_TBL_LINE_CFG_MAC_DISCARD_S = common dso_local global i32 0, align 4
@DSAF_TBL_LINE_CFG_DVC_S = common dso_local global i32 0, align 4
@DSAF_TBL_LINE_CFG_OUT_PORT_M = common dso_local global i32 0, align 4
@DSAF_TBL_LINE_CFG_OUT_PORT_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*, %struct.dsaf_tbl_line_cfg*)* @hns_dsaf_tbl_line_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_tbl_line_cfg(%struct.dsaf_device* %0, %struct.dsaf_tbl_line_cfg* %1) #0 {
  %3 = alloca %struct.dsaf_device*, align 8
  %4 = alloca %struct.dsaf_tbl_line_cfg*, align 8
  %5 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %3, align 8
  store %struct.dsaf_tbl_line_cfg* %1, %struct.dsaf_tbl_line_cfg** %4, align 8
  %6 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %7 = load i32, i32* @DSAF_TBL_LIN_CFG_0_REG, align 4
  %8 = call i32 @dsaf_read_dev(%struct.dsaf_device* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @DSAF_TBL_LINE_CFG_MAC_DISCARD_S, align 4
  %11 = load %struct.dsaf_tbl_line_cfg*, %struct.dsaf_tbl_line_cfg** %4, align 8
  %12 = getelementptr inbounds %struct.dsaf_tbl_line_cfg, %struct.dsaf_tbl_line_cfg* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dsaf_set_bit(i32 %9, i32 %10, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @DSAF_TBL_LINE_CFG_DVC_S, align 4
  %17 = load %struct.dsaf_tbl_line_cfg*, %struct.dsaf_tbl_line_cfg** %4, align 8
  %18 = getelementptr inbounds %struct.dsaf_tbl_line_cfg, %struct.dsaf_tbl_line_cfg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dsaf_set_bit(i32 %15, i32 %16, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @DSAF_TBL_LINE_CFG_OUT_PORT_M, align 4
  %23 = load i32, i32* @DSAF_TBL_LINE_CFG_OUT_PORT_S, align 4
  %24 = load %struct.dsaf_tbl_line_cfg*, %struct.dsaf_tbl_line_cfg** %4, align 8
  %25 = getelementptr inbounds %struct.dsaf_tbl_line_cfg, %struct.dsaf_tbl_line_cfg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dsaf_set_field(i32 %21, i32 %22, i32 %23, i32 %26)
  %28 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %29 = load i32, i32* @DSAF_TBL_LIN_CFG_0_REG, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @dsaf_write_dev(%struct.dsaf_device* %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @dsaf_read_dev(%struct.dsaf_device*, i32) #1

declare dso_local i32 @dsaf_set_bit(i32, i32, i32) #1

declare dso_local i32 @dsaf_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @dsaf_write_dev(%struct.dsaf_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
