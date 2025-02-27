; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_get_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ch_ifconf_regs = type { i32 }

@A_SG_RSPQ_CREDIT_RETURN = common dso_local global i32 0, align 4
@A_SG_HI_DRB_HI_THRSH = common dso_local global i32 0, align 4
@A_ULPRX_PBL_ULIMIT = common dso_local global i32 0, align 4
@A_ULPTX_CONFIG = common dso_local global i32 0, align 4
@A_MPS_INT_CAUSE = common dso_local global i32 0, align 4
@A_CPL_SWITCH_CNTRL = common dso_local global i32 0, align 4
@A_CPL_MAP_TBL_DATA = common dso_local global i32 0, align 4
@A_SMB_GLOBAL_TIME_CFG = common dso_local global i32 0, align 4
@A_XGM_SERDES_STAT3 = common dso_local global i32 0, align 4
@A_XGM_SERDES_STATUS0 = common dso_local global i32 0, align 4
@A_XGM_RX_SPI4_SOP_EOP_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.ch_ifconf_regs*, i32*)* @cxgb_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb_get_regs(%struct.TYPE_7__* %0, %struct.ch_ifconf_regs* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.ch_ifconf_regs*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.ch_ifconf_regs* %1, %struct.ch_ifconf_regs** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 10
  %12 = or i32 3, %11
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = call i32 @is_pcie(%struct.TYPE_7__* %13)
  %15 = shl i32 %14, 31
  %16 = or i32 %12, %15
  %17 = load %struct.ch_ifconf_regs*, %struct.ch_ifconf_regs** %5, align 8
  %18 = getelementptr inbounds %struct.ch_ifconf_regs, %struct.ch_ifconf_regs* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 (...) @cxgb_get_regs_len()
  %21 = call i32 @memset(i32* %19, i32 0, i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @A_SG_RSPQ_CREDIT_RETURN, align 4
  %25 = call i32 @reg_block_dump(%struct.TYPE_7__* %22, i32* %23, i32 0, i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @A_SG_HI_DRB_HI_THRSH, align 4
  %29 = load i32, i32* @A_ULPRX_PBL_ULIMIT, align 4
  %30 = call i32 @reg_block_dump(%struct.TYPE_7__* %26, i32* %27, i32 %28, i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @A_ULPTX_CONFIG, align 4
  %34 = load i32, i32* @A_MPS_INT_CAUSE, align 4
  %35 = call i32 @reg_block_dump(%struct.TYPE_7__* %31, i32* %32, i32 %33, i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @A_CPL_SWITCH_CNTRL, align 4
  %39 = load i32, i32* @A_CPL_MAP_TBL_DATA, align 4
  %40 = call i32 @reg_block_dump(%struct.TYPE_7__* %36, i32* %37, i32 %38, i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* @A_SMB_GLOBAL_TIME_CFG, align 4
  %44 = load i32, i32* @A_XGM_SERDES_STAT3, align 4
  %45 = call i32 @reg_block_dump(%struct.TYPE_7__* %41, i32* %42, i32 %43, i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @A_XGM_SERDES_STATUS0, align 4
  %49 = load i32, i32* @A_XGM_SERDES_STAT3, align 4
  %50 = call i32 @XGM_REG(i32 %49, i32 1)
  %51 = call i32 @reg_block_dump(%struct.TYPE_7__* %46, i32* %47, i32 %48, i32 %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @A_XGM_SERDES_STATUS0, align 4
  %55 = call i32 @XGM_REG(i32 %54, i32 1)
  %56 = load i32, i32* @A_XGM_RX_SPI4_SOP_EOP_CNT, align 4
  %57 = call i32 @XGM_REG(i32 %56, i32 1)
  %58 = call i32 @reg_block_dump(%struct.TYPE_7__* %52, i32* %53, i32 %55, i32 %57)
  ret void
}

declare dso_local i32 @is_pcie(%struct.TYPE_7__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cxgb_get_regs_len(...) #1

declare dso_local i32 @reg_block_dump(%struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i32 @XGM_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
