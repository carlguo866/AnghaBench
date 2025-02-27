; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_button_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_button_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@RT5670_IL_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @rt5670_button_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5670_button_detect(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = load i32, i32* @RT5670_IL_CMD, align 4
  %7 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 65408
  store i32 %9, i32* %3, align 4
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %11 = load i32, i32* @RT5670_IL_CMD, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %10, i32 %11, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = call i32 @msleep(i32 20)
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %19 = load i32, i32* @RT5670_IL_CMD, align 4
  %20 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %22 = load i32, i32* @RT5670_IL_CMD, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %16, %1
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
