; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_audio_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_audio_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sor = type { i32 }

@SOR_AUDIO_HDA_PRESENSE_ELDV = common dso_local global i32 0, align 4
@SOR_AUDIO_HDA_PRESENSE_PD = common dso_local global i32 0, align 4
@SOR_AUDIO_HDA_PRESENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_sor*)* @tegra_sor_audio_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_sor_audio_prepare(%struct.tegra_sor* %0) #0 {
  %2 = alloca %struct.tegra_sor*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_sor* %0, %struct.tegra_sor** %2, align 8
  %4 = load %struct.tegra_sor*, %struct.tegra_sor** %2, align 8
  %5 = call i32 @tegra_sor_write_eld(%struct.tegra_sor* %4)
  %6 = load i32, i32* @SOR_AUDIO_HDA_PRESENSE_ELDV, align 4
  %7 = load i32, i32* @SOR_AUDIO_HDA_PRESENSE_PD, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.tegra_sor*, %struct.tegra_sor** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SOR_AUDIO_HDA_PRESENSE, align 4
  %12 = call i32 @tegra_sor_writel(%struct.tegra_sor* %9, i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @tegra_sor_write_eld(%struct.tegra_sor*) #1

declare dso_local i32 @tegra_sor_writel(%struct.tegra_sor*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
