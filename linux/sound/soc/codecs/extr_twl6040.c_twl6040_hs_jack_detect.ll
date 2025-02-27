; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl6040.c_twl6040_hs_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl6040.c_twl6040_hs_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.twl6040_data = type { %struct.twl6040_jack_data }
%struct.twl6040_jack_data = type { i32, %struct.snd_soc_jack* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @twl6040_hs_jack_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_soc_jack*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.twl6040_data*, align 8
  %8 = alloca %struct.twl6040_jack_data*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = call %struct.twl6040_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.twl6040_data* %10, %struct.twl6040_data** %7, align 8
  %11 = load %struct.twl6040_data*, %struct.twl6040_data** %7, align 8
  %12 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %11, i32 0, i32 0
  store %struct.twl6040_jack_data* %12, %struct.twl6040_jack_data** %8, align 8
  %13 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %14 = load %struct.twl6040_jack_data*, %struct.twl6040_jack_data** %8, align 8
  %15 = getelementptr inbounds %struct.twl6040_jack_data, %struct.twl6040_jack_data* %14, i32 0, i32 1
  store %struct.snd_soc_jack* %13, %struct.snd_soc_jack** %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.twl6040_jack_data*, %struct.twl6040_jack_data** %8, align 8
  %18 = getelementptr inbounds %struct.twl6040_jack_data, %struct.twl6040_jack_data* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %20 = load %struct.twl6040_jack_data*, %struct.twl6040_jack_data** %8, align 8
  %21 = getelementptr inbounds %struct.twl6040_jack_data, %struct.twl6040_jack_data* %20, i32 0, i32 1
  %22 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %21, align 8
  %23 = load %struct.twl6040_jack_data*, %struct.twl6040_jack_data** %8, align 8
  %24 = getelementptr inbounds %struct.twl6040_jack_data, %struct.twl6040_jack_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @twl6040_hs_jack_report(%struct.snd_soc_component* %19, %struct.snd_soc_jack* %22, i32 %25)
  ret void
}

declare dso_local %struct.twl6040_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @twl6040_hs_jack_report(%struct.snd_soc_component*, %struct.snd_soc_jack*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
