; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atmel_lcdfb.c_atmel_lcdfb_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atmel_lcdfb.c_atmel_lcdfb_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.atmel_lcdfb_info* }
%struct.atmel_lcdfb_info = type { i32 }

@ATMEL_LCDC_ISR = common dso_local global i32 0, align 4
@ATMEL_LCDC_UFLWI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"FIFO underflow %#x\0A\00", align 1
@ATMEL_LCDC_ICR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @atmel_lcdfb_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_lcdfb_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.atmel_lcdfb_info*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.fb_info*
  store %struct.fb_info* %9, %struct.fb_info** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 1
  %12 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %11, align 8
  store %struct.atmel_lcdfb_info* %12, %struct.atmel_lcdfb_info** %6, align 8
  %13 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %6, align 8
  %14 = load i32, i32* @ATMEL_LCDC_ISR, align 4
  %15 = call i32 @lcdc_readl(%struct.atmel_lcdfb_info* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @ATMEL_LCDC_UFLWI, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dev_warn(i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %6, align 8
  %27 = getelementptr inbounds %struct.atmel_lcdfb_info, %struct.atmel_lcdfb_info* %26, i32 0, i32 0
  %28 = call i32 @schedule_work(i32* %27)
  br label %29

29:                                               ; preds = %20, %2
  %30 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %6, align 8
  %31 = load i32, i32* @ATMEL_LCDC_ICR, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @lcdc_writel(%struct.atmel_lcdfb_info* %30, i32 %31, i32 %32)
  %34 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %34
}

declare dso_local i32 @lcdc_readl(%struct.atmel_lcdfb_info*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @lcdc_writel(%struct.atmel_lcdfb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
