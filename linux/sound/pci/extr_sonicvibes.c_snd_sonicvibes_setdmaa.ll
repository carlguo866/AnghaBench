; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_setdmaa.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_setdmaa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sonicvibes = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SV_DMA_ADDR0 = common dso_local global i64 0, align 8
@SV_DMA_COUNT0 = common dso_local global i64 0, align 8
@SV_DMA_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sonicvibes*, i32, i32)* @snd_sonicvibes_setdmaa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_sonicvibes_setdmaa(%struct.sonicvibes* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sonicvibes*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sonicvibes* %0, %struct.sonicvibes** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = add i32 %7, -1
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.sonicvibes*, %struct.sonicvibes** %4, align 8
  %11 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SV_DMA_ADDR0, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @outl(i32 %9, i64 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.sonicvibes*, %struct.sonicvibes** %4, align 8
  %18 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SV_DMA_COUNT0, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outl(i32 %16, i64 %21)
  %23 = load %struct.sonicvibes*, %struct.sonicvibes** %4, align 8
  %24 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SV_DMA_MODE, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outb(i32 24, i64 %27)
  ret void
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
