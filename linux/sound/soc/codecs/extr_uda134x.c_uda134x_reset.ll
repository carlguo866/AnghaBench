; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda134x.c_uda134x_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda134x.c_uda134x_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.uda134x_priv = type { i32 }

@UDA134X_STATUS0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @uda134x_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uda134x_reset(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.uda134x_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.uda134x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.uda134x_priv* %6, %struct.uda134x_priv** %3, align 8
  store i32 64, i32* %4, align 4
  %7 = load %struct.uda134x_priv*, %struct.uda134x_priv** %3, align 8
  %8 = getelementptr inbounds %struct.uda134x_priv, %struct.uda134x_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @UDA134X_STATUS0, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @regmap_update_bits(i32 %9, i32 %10, i32 %11, i32 %12)
  %14 = call i32 @msleep(i32 1)
  %15 = load %struct.uda134x_priv*, %struct.uda134x_priv** %3, align 8
  %16 = getelementptr inbounds %struct.uda134x_priv, %struct.uda134x_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UDA134X_STATUS0, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 %19, i32 0)
  ret void
}

declare dso_local %struct.uda134x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
