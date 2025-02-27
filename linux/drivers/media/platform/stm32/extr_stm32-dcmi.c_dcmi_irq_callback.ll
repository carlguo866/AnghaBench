; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_irq_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_irq_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dcmi = type { i32, i32, i32 }

@DCMI_MIS = common dso_local global i32 0, align 4
@DCMI_ICR = common dso_local global i32 0, align 4
@IT_FRAME = common dso_local global i32 0, align 4
@IT_OVR = common dso_local global i32 0, align 4
@IT_ERR = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dcmi_irq_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcmi_irq_callback(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stm32_dcmi*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.stm32_dcmi*
  store %struct.stm32_dcmi* %8, %struct.stm32_dcmi** %5, align 8
  %9 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %5, align 8
  %10 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %5, align 8
  %14 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DCMI_MIS, align 4
  %17 = call i32 @reg_read(i32 %15, i32 %16)
  %18 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %5, align 8
  %19 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %5, align 8
  %21 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DCMI_ICR, align 4
  %24 = load i32, i32* @IT_FRAME, align 4
  %25 = load i32, i32* @IT_OVR, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @IT_ERR, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @reg_set(i32 %22, i32 %23, i32 %28)
  %30 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %5, align 8
  %31 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %30, i32 0, i32 0
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  ret i32 %34
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @reg_read(i32, i32) #1

declare dso_local i32 @reg_set(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
