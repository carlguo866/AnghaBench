; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_hp_vol_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_hp_vol_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { i32 }
%struct.snd_soc_component = type { i32 }

@RT5665_STO_NG2_CTRL_1 = common dso_local global i32 0, align 4
@RT5665_NG2_EN = common dso_local global i32 0, align 4
@RT5665_NG2_EN_MASK = common dso_local global i32 0, align 4
@RT5665_NG2_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @rt5665_hp_vol_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5665_hp_vol_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %7)
  store %struct.snd_soc_component* %8, %struct.snd_soc_component** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %11 = call i32 @snd_soc_put_volsw(%struct.snd_kcontrol* %9, %struct.snd_ctl_elem_value* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %13 = load i32, i32* @RT5665_STO_NG2_CTRL_1, align 4
  %14 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %12, i32 %13)
  %15 = load i32, i32* @RT5665_NG2_EN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %20 = load i32, i32* @RT5665_STO_NG2_CTRL_1, align 4
  %21 = load i32, i32* @RT5665_NG2_EN_MASK, align 4
  %22 = load i32, i32* @RT5665_NG2_DIS, align 4
  %23 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %25 = load i32, i32* @RT5665_STO_NG2_CTRL_1, align 4
  %26 = load i32, i32* @RT5665_NG2_EN_MASK, align 4
  %27 = load i32, i32* @RT5665_NG2_EN, align 4
  %28 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %24, i32 %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %18, %2
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_put_volsw(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
