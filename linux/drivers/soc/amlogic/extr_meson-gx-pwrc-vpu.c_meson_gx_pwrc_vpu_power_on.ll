; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-gx-pwrc-vpu.c_meson_gx_pwrc_vpu_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-gx-pwrc-vpu.c_meson_gx_pwrc_vpu_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { i32 }
%struct.meson_gx_pwrc_vpu = type { i32, i32, i32 }

@AO_RTI_GEN_PWR_SLEEP0 = common dso_local global i32 0, align 4
@GEN_PWR_VPU_HDMI = common dso_local global i32 0, align 4
@HHI_VPU_MEM_PD_REG0 = common dso_local global i32 0, align 4
@HHI_VPU_MEM_PD_REG1 = common dso_local global i32 0, align 4
@HHI_MEM_PD_REG0 = common dso_local global i32 0, align 4
@GEN_PWR_VPU_HDMI_ISO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.generic_pm_domain*)* @meson_gx_pwrc_vpu_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_gx_pwrc_vpu_power_on(%struct.generic_pm_domain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.generic_pm_domain*, align 8
  %4 = alloca %struct.meson_gx_pwrc_vpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %3, align 8
  %7 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %3, align 8
  %8 = call %struct.meson_gx_pwrc_vpu* @genpd_to_pd(%struct.generic_pm_domain* %7)
  store %struct.meson_gx_pwrc_vpu* %8, %struct.meson_gx_pwrc_vpu** %4, align 8
  %9 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %4, align 8
  %10 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AO_RTI_GEN_PWR_SLEEP0, align 4
  %13 = load i32, i32* @GEN_PWR_VPU_HDMI, align 4
  %14 = call i32 @regmap_update_bits(i32 %11, i32 %12, i32 %13, i32 0)
  %15 = call i32 @udelay(i32 20)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %28, %1
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 32
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %4, align 8
  %21 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HHI_VPU_MEM_PD_REG0, align 4
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 3, %24
  %26 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %25, i32 0)
  %27 = call i32 @udelay(i32 5)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 2
  store i32 %30, i32* %6, align 4
  br label %16

31:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %44, %31
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 32
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %4, align 8
  %37 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HHI_VPU_MEM_PD_REG1, align 4
  %40 = load i32, i32* %6, align 4
  %41 = shl i32 3, %40
  %42 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %41, i32 0)
  %43 = call i32 @udelay(i32 5)
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 2
  store i32 %46, i32* %6, align 4
  br label %32

47:                                               ; preds = %32
  store i32 8, i32* %6, align 4
  br label %48

48:                                               ; preds = %60, %47
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 16
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %4, align 8
  %53 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HHI_MEM_PD_REG0, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = call i32 @regmap_update_bits(i32 %54, i32 %55, i32 %57, i32 0)
  %59 = call i32 @udelay(i32 5)
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %48

63:                                               ; preds = %48
  %64 = call i32 @udelay(i32 20)
  %65 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %4, align 8
  %66 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @reset_control_assert(i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %96

73:                                               ; preds = %63
  %74 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %4, align 8
  %75 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AO_RTI_GEN_PWR_SLEEP0, align 4
  %78 = load i32, i32* @GEN_PWR_VPU_HDMI_ISO, align 4
  %79 = call i32 @regmap_update_bits(i32 %76, i32 %77, i32 %78, i32 0)
  %80 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %4, align 8
  %81 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @reset_control_deassert(i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %73
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %96

88:                                               ; preds = %73
  %89 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %4, align 8
  %90 = call i32 @meson_gx_pwrc_vpu_setup_clk(%struct.meson_gx_pwrc_vpu* %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %2, align 4
  br label %96

95:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %93, %86, %71
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.meson_gx_pwrc_vpu* @genpd_to_pd(%struct.generic_pm_domain*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @meson_gx_pwrc_vpu_setup_clk(%struct.meson_gx_pwrc_vpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
