; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-core.c_tw686x_enable_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-core.c_tw686x_enable_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw686x_dev = type { i32, i32 }

@DMA_CHANNEL_ENABLE = common dso_local global i32 0, align 4
@DMA_CMD = common dso_local global i32 0, align 4
@DMA_CMD_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tw686x_enable_channel(%struct.tw686x_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.tw686x_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tw686x_dev* %0, %struct.tw686x_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %8 = load i32, i32* @DMA_CHANNEL_ENABLE, align 4
  %9 = call i32 @reg_read(%struct.tw686x_dev* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %11 = load i32, i32* @DMA_CMD, align 4
  %12 = call i32 @reg_read(%struct.tw686x_dev* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @BIT(i32 %14)
  %16 = or i32 %13, %15
  %17 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %18 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @DMA_CMD_ENABLE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = or i32 %23, %25
  %27 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %28 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  ret void
}

declare dso_local i32 @reg_read(%struct.tw686x_dev*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
