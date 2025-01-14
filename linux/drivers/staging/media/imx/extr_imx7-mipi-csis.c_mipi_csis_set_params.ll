; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_state = type { i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MIPI_CSIS_CMN_CTRL = common dso_local global i32 0, align 4
@MIPI_CSIS_CMN_CTRL_LANE_NR_MASK = common dso_local global i32 0, align 4
@MIPI_CSIS_CMN_CTRL_LANE_NR_OFFSET = common dso_local global i32 0, align 4
@MIPI_CSIS_ISPCONFIG_CH0 = common dso_local global i32 0, align 4
@MIPI_CSIS_ISPCFG_ALIGN_32BIT = common dso_local global i32 0, align 4
@MIPI_CSIS_ISPSYNC_HSYNC_LINTV_OFFSET = common dso_local global i32 0, align 4
@MIPI_CSIS_ISPSYNC_VSYNC_SINTV_OFFSET = common dso_local global i32 0, align 4
@MIPI_CSIS_ISPSYNC_VSYNC_EINTV_OFFSET = common dso_local global i32 0, align 4
@MIPI_CSIS_ISPSYNC_CH0 = common dso_local global i32 0, align 4
@MIPI_CSIS_CLK_CTRL = common dso_local global i32 0, align 4
@MIPI_CSIS_CLK_CTRL_WCLK_SRC = common dso_local global i32 0, align 4
@MIPI_CSIS_CLK_CTRL_CLKGATE_EN_MSK = common dso_local global i32 0, align 4
@MIPI_CSIS_DPHYBCTRL_L = common dso_local global i32 0, align 4
@MIPI_CSIS_DPHYBCTRL_H = common dso_local global i32 0, align 4
@MIPI_CSIS_CMN_CTRL_UPDATE_SHADOW = common dso_local global i32 0, align 4
@MIPI_CSIS_CMN_CTRL_UPDATE_SHADOW_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csi_state*)* @mipi_csis_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mipi_csis_set_params(%struct.csi_state* %0) #0 {
  %2 = alloca %struct.csi_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.csi_state* %0, %struct.csi_state** %2, align 8
  %5 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %6 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %10 = load i32, i32* @MIPI_CSIS_CMN_CTRL, align 4
  %11 = call i32 @mipi_csis_read(%struct.csi_state* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @MIPI_CSIS_CMN_CTRL_LANE_NR_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* @MIPI_CSIS_CMN_CTRL_LANE_NR_OFFSET, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %23 = load i32, i32* @MIPI_CSIS_CMN_CTRL, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @mipi_csis_write(%struct.csi_state* %22, i32 %23, i32 %24)
  %26 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %27 = call i32 @__mipi_csis_set_format(%struct.csi_state* %26)
  %28 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %29 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %30 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @mipi_csis_set_hsync_settle(%struct.csi_state* %28, i32 %31)
  %33 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %34 = load i32, i32* @MIPI_CSIS_ISPCONFIG_CH0, align 4
  %35 = call i32 @mipi_csis_read(%struct.csi_state* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %37 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 32
  br i1 %41, label %42, label %46

42:                                               ; preds = %1
  %43 = load i32, i32* @MIPI_CSIS_ISPCFG_ALIGN_32BIT, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %51

46:                                               ; preds = %1
  %47 = load i32, i32* @MIPI_CSIS_ISPCFG_ALIGN_32BIT, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %53 = load i32, i32* @MIPI_CSIS_ISPCONFIG_CH0, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @mipi_csis_write(%struct.csi_state* %52, i32 %53, i32 %54)
  %56 = load i32, i32* @MIPI_CSIS_ISPSYNC_HSYNC_LINTV_OFFSET, align 4
  %57 = shl i32 0, %56
  %58 = load i32, i32* @MIPI_CSIS_ISPSYNC_VSYNC_SINTV_OFFSET, align 4
  %59 = shl i32 0, %58
  %60 = or i32 %57, %59
  %61 = load i32, i32* @MIPI_CSIS_ISPSYNC_VSYNC_EINTV_OFFSET, align 4
  %62 = shl i32 0, %61
  %63 = or i32 %60, %62
  store i32 %63, i32* %4, align 4
  %64 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %65 = load i32, i32* @MIPI_CSIS_ISPSYNC_CH0, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @mipi_csis_write(%struct.csi_state* %64, i32 %65, i32 %66)
  %68 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %69 = load i32, i32* @MIPI_CSIS_CLK_CTRL, align 4
  %70 = call i32 @mipi_csis_read(%struct.csi_state* %68, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* @MIPI_CSIS_CLK_CTRL_WCLK_SRC, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %4, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %76 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %51
  %80 = load i32, i32* @MIPI_CSIS_CLK_CTRL_WCLK_SRC, align 4
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %4, align 4
  br label %88

83:                                               ; preds = %51
  %84 = load i32, i32* @MIPI_CSIS_CLK_CTRL_WCLK_SRC, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %4, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %83, %79
  %89 = call i32 @MIPI_CSIS_CLK_CTRL_CLKGATE_TRAIL_CH0(i32 15)
  %90 = load i32, i32* %4, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* @MIPI_CSIS_CLK_CTRL_CLKGATE_EN_MSK, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %4, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %4, align 4
  %96 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %97 = load i32, i32* @MIPI_CSIS_CLK_CTRL, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @mipi_csis_write(%struct.csi_state* %96, i32 %97, i32 %98)
  %100 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %101 = load i32, i32* @MIPI_CSIS_DPHYBCTRL_L, align 4
  %102 = call i32 @mipi_csis_write(%struct.csi_state* %100, i32 %101, i32 500)
  %103 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %104 = load i32, i32* @MIPI_CSIS_DPHYBCTRL_H, align 4
  %105 = call i32 @mipi_csis_write(%struct.csi_state* %103, i32 %104, i32 0)
  %106 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %107 = load i32, i32* @MIPI_CSIS_CMN_CTRL, align 4
  %108 = call i32 @mipi_csis_read(%struct.csi_state* %106, i32 %107)
  store i32 %108, i32* %4, align 4
  %109 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %110 = load i32, i32* @MIPI_CSIS_CMN_CTRL, align 4
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @MIPI_CSIS_CMN_CTRL_UPDATE_SHADOW, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @MIPI_CSIS_CMN_CTRL_UPDATE_SHADOW_CTRL, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @mipi_csis_write(%struct.csi_state* %109, i32 %110, i32 %115)
  ret void
}

declare dso_local i32 @mipi_csis_read(%struct.csi_state*, i32) #1

declare dso_local i32 @mipi_csis_write(%struct.csi_state*, i32, i32) #1

declare dso_local i32 @__mipi_csis_set_format(%struct.csi_state*) #1

declare dso_local i32 @mipi_csis_set_hsync_settle(%struct.csi_state*, i32) #1

declare dso_local i32 @MIPI_CSIS_CLK_CTRL_CLKGATE_TRAIL_CH0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
