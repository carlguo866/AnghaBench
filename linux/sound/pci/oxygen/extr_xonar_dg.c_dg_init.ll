; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg.c_dg_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg.c_dg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.dg* }
%struct.dg = type { i32, i32 }

@PLAYBACK_DST_HP_FP = common dso_local global i32 0, align 4
@CAPTURE_SRC_MIC = common dso_local global i32 0, align 4
@OXYGEN_GPIO_CONTROL = common dso_local global i32 0, align 4
@GPIO_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@GPIO_HP_REAR = common dso_local global i32 0, align 4
@GPIO_INPUT_ROUTE = common dso_local global i32 0, align 4
@OXYGEN_GPIO_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dg_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.dg*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 0
  %6 = load %struct.dg*, %struct.dg** %5, align 8
  store %struct.dg* %6, %struct.dg** %3, align 8
  %7 = load i32, i32* @PLAYBACK_DST_HP_FP, align 4
  %8 = load %struct.dg*, %struct.dg** %3, align 8
  %9 = getelementptr inbounds %struct.dg, %struct.dg* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @CAPTURE_SRC_MIC, align 4
  %11 = load %struct.dg*, %struct.dg** %3, align 8
  %12 = getelementptr inbounds %struct.dg, %struct.dg* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %14 = call i32 @cs4245_init(%struct.oxygen* %13)
  %15 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %16 = load i32, i32* @OXYGEN_GPIO_CONTROL, align 4
  %17 = load i32, i32* @GPIO_OUTPUT_ENABLE, align 4
  %18 = load i32, i32* @GPIO_HP_REAR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @GPIO_INPUT_ROUTE, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @oxygen_write16(%struct.oxygen* %15, i32 %16, i32 %21)
  %23 = call i32 @msleep(i32 2500)
  %24 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %25 = load i32, i32* @OXYGEN_GPIO_DATA, align 4
  %26 = load i32, i32* @GPIO_OUTPUT_ENABLE, align 4
  %27 = load i32, i32* @GPIO_INPUT_ROUTE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @oxygen_write16(%struct.oxygen* %24, i32 %25, i32 %28)
  ret void
}

declare dso_local i32 @cs4245_init(%struct.oxygen*) #1

declare dso_local i32 @oxygen_write16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
