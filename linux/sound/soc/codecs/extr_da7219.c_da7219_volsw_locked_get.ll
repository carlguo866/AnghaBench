; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_volsw_locked_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_volsw_locked_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.da7219_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @da7219_volsw_locked_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7219_volsw_locked_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.da7219_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %8)
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %5, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %11 = call %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.da7219_priv* %11, %struct.da7219_priv** %6, align 8
  %12 = load %struct.da7219_priv*, %struct.da7219_priv** %6, align 8
  %13 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %17 = call i32 @snd_soc_get_volsw(%struct.snd_kcontrol* %15, %struct.snd_ctl_elem_value* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.da7219_priv*, %struct.da7219_priv** %6, align 8
  %19 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load i32, i32* %7, align 4
  ret i32 %21
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_soc_get_volsw(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
