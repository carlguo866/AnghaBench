; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_mioa701_wm9713.c_rear_amp_power.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_mioa701_wm9713.c_rear_amp_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@AC97_GPIO_CFG = common dso_local global i32 0, align 4
@AC97_GPIO_PULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rear_amp_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rear_amp_power(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %2
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = load i32, i32* @AC97_GPIO_CFG, align 4
  %11 = call zeroext i16 @snd_soc_component_read32(%struct.snd_soc_component* %9, i32 %10)
  store i16 %11, i16* %5, align 2
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = load i32, i32* @AC97_GPIO_CFG, align 4
  %14 = load i16, i16* %5, align 2
  %15 = zext i16 %14 to i32
  %16 = or i32 %15, 256
  %17 = trunc i32 %16 to i16
  %18 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %12, i32 %13, i16 zeroext %17)
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %20 = load i32, i32* @AC97_GPIO_PULL, align 4
  %21 = call zeroext i16 @snd_soc_component_read32(%struct.snd_soc_component* %19, i32 %20)
  store i16 %21, i16* %5, align 2
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %23 = load i32, i32* @AC97_GPIO_PULL, align 4
  %24 = load i16, i16* %5, align 2
  %25 = zext i16 %24 to i32
  %26 = or i32 %25, 32768
  %27 = trunc i32 %26 to i16
  %28 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %22, i32 %23, i16 zeroext %27)
  br label %50

29:                                               ; preds = %2
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %31 = load i32, i32* @AC97_GPIO_CFG, align 4
  %32 = call zeroext i16 @snd_soc_component_read32(%struct.snd_soc_component* %30, i32 %31)
  store i16 %32, i16* %5, align 2
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = load i32, i32* @AC97_GPIO_CFG, align 4
  %35 = load i16, i16* %5, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, -257
  %38 = trunc i32 %37 to i16
  %39 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %33, i32 %34, i16 zeroext %38)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %41 = load i32, i32* @AC97_GPIO_PULL, align 4
  %42 = call zeroext i16 @snd_soc_component_read32(%struct.snd_soc_component* %40, i32 %41)
  store i16 %42, i16* %5, align 2
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %44 = load i32, i32* @AC97_GPIO_PULL, align 4
  %45 = load i16, i16* %5, align 2
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, -32769
  %48 = trunc i32 %47 to i16
  %49 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %43, i32 %44, i16 zeroext %48)
  br label %50

50:                                               ; preds = %29, %8
  ret i32 0
}

declare dso_local zeroext i16 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
