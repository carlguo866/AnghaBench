; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_enable656.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_enable656.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@TS1_PIN_CTL0 = common dso_local global i32 0, align 4
@TS1_PIN_CTL1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_enable656(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %6 = load i32, i32* @TS1_PIN_CTL0, align 4
  %7 = call i32 @vid_blk_write_byte(%struct.cx231xx* %5, i32 %6, i32 255)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %9 = load i32, i32* @TS1_PIN_CTL1, align 4
  %10 = call i32 @vid_blk_read_byte(%struct.cx231xx* %8, i32 %9, i32* %3)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %14 = load i32, i32* @TS1_PIN_CTL1, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @vid_blk_write_byte(%struct.cx231xx* %13, i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  ret void
}

declare dso_local i32 @vid_blk_write_byte(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @vid_blk_read_byte(%struct.cx231xx*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
