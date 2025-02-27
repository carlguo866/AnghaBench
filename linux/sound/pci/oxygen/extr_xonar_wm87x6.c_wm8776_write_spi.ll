; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_write_spi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_write_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32 }

@OXYGEN_SPI_TRIGGER = common dso_local global i32 0, align 4
@OXYGEN_SPI_DATA_LENGTH_2 = common dso_local global i32 0, align 4
@OXYGEN_SPI_CLOCK_160 = common dso_local global i32 0, align 4
@OXYGEN_SPI_CODEC_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_SPI_CEN_LATCH_CLOCK_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*, i32, i32)* @wm8776_write_spi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8776_write_spi(%struct.oxygen* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.oxygen*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %8 = load i32, i32* @OXYGEN_SPI_TRIGGER, align 4
  %9 = load i32, i32* @OXYGEN_SPI_DATA_LENGTH_2, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @OXYGEN_SPI_CLOCK_160, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @OXYGEN_SPI_CODEC_SHIFT, align 4
  %14 = shl i32 1, %13
  %15 = or i32 %12, %14
  %16 = load i32, i32* @OXYGEN_SPI_CEN_LATCH_CLOCK_LO, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 %18, 9
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @oxygen_write_spi(%struct.oxygen* %7, i32 %17, i32 %21)
  ret void
}

declare dso_local i32 @oxygen_write_spi(%struct.oxygen*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
