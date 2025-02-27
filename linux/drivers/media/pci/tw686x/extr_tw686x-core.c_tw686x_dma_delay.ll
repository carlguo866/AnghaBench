; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-core.c_tw686x_dma_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-core.c_tw686x_dma_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw686x_dev = type { i32, i64, i64 }
%struct.timer_list = type { i32 }

@dma_delay_timer = common dso_local global i32 0, align 4
@DMA_CHANNEL_ENABLE = common dso_local global i32 0, align 4
@DMA_CMD = common dso_local global i32 0, align 4
@dev = common dso_local global %struct.tw686x_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @tw686x_dma_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw686x_dma_delay(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.tw686x_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %6 = ptrtoint %struct.tw686x_dev* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @dma_delay_timer, align 4
  %9 = call %struct.tw686x_dev* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.tw686x_dev* %9, %struct.tw686x_dev** %3, align 8
  %10 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %11 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %15 = load i32, i32* @DMA_CHANNEL_ENABLE, align 4
  %16 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %17 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @reg_write(%struct.tw686x_dev* %14, i32 %15, i64 %18)
  %20 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %21 = load i32, i32* @DMA_CMD, align 4
  %22 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %23 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @reg_write(%struct.tw686x_dev* %20, i32 %21, i64 %24)
  %26 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %27 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %29 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %31 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  ret void
}

declare dso_local %struct.tw686x_dev* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @reg_write(%struct.tw686x_dev*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
