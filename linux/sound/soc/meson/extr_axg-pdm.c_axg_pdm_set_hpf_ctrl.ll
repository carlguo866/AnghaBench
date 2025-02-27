; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-pdm.c_axg_pdm_set_hpf_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-pdm.c_axg_pdm_set_hpf_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axg_pdm = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.axg_pdm_hpf }
%struct.axg_pdm_hpf = type { i32, i32 }

@PDM_HPF_CTRL = common dso_local global i32 0, align 4
@PDM_HPF_OUT_FACTOR_MASK = common dso_local global i32 0, align 4
@PDM_HPF_SFT_STEPS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axg_pdm*)* @axg_pdm_set_hpf_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axg_pdm_set_hpf_ctrl(%struct.axg_pdm* %0) #0 {
  %2 = alloca %struct.axg_pdm*, align 8
  %3 = alloca %struct.axg_pdm_hpf*, align 8
  %4 = alloca i32, align 4
  store %struct.axg_pdm* %0, %struct.axg_pdm** %2, align 8
  %5 = load %struct.axg_pdm*, %struct.axg_pdm** %2, align 8
  %6 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.axg_pdm_hpf* %10, %struct.axg_pdm_hpf** %3, align 8
  %11 = load %struct.axg_pdm_hpf*, %struct.axg_pdm_hpf** %3, align 8
  %12 = getelementptr inbounds %struct.axg_pdm_hpf, %struct.axg_pdm_hpf* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @PDM_HPF_OUT_FACTOR(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.axg_pdm_hpf*, %struct.axg_pdm_hpf** %3, align 8
  %16 = getelementptr inbounds %struct.axg_pdm_hpf, %struct.axg_pdm_hpf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PDM_HPF_SFT_STEPS(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.axg_pdm*, %struct.axg_pdm** %2, align 8
  %22 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PDM_HPF_CTRL, align 4
  %25 = load i32, i32* @PDM_HPF_OUT_FACTOR_MASK, align 4
  %26 = load i32, i32* @PDM_HPF_SFT_STEPS_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @PDM_HPF_OUT_FACTOR(i32) #1

declare dso_local i32 @PDM_HPF_SFT_STEPS(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
