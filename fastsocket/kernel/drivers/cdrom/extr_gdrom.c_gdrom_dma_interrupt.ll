; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_gdrom.c_gdrom_dma_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_gdrom.c_gdrom_dma_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@GDROM_STATUSCOMMAND_REG = common dso_local global i32 0, align 4
@gd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@request_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gdrom_dma_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdrom_dma_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* @GDROM_STATUSCOMMAND_REG, align 4
  %7 = call i32 @ctrl_inb(i32 %6)
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gd, i32 0, i32 1), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gd, i32 0, i32 0), align 4
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %11, i32* %3, align 4
  br label %15

12:                                               ; preds = %2
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gd, i32 0, i32 0), align 4
  %13 = call i32 @wake_up_interruptible(i32* @request_queue)
  %14 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %12, %10
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i32 @ctrl_inb(i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
