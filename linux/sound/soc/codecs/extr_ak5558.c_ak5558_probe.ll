; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak5558.c_ak5558_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak5558.c_ak5558_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.ak5558_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @ak5558_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak5558_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.ak5558_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.ak5558_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.ak5558_priv* %5, %struct.ak5558_priv** %3, align 8
  %6 = load %struct.ak5558_priv*, %struct.ak5558_priv** %3, align 8
  %7 = call i32 @ak5558_power_on(%struct.ak5558_priv* %6)
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %9 = call i32 @ak5558_set_mcki(%struct.snd_soc_component* %8)
  ret i32 %9
}

declare dso_local %struct.ak5558_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ak5558_power_on(%struct.ak5558_priv*) #1

declare dso_local i32 @ak5558_set_mcki(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
