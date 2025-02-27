; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-go7007.c_gpio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-go7007.c_gpio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32 }

@SAA7134_GPIO_GPMODE0 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS0 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS2 = common dso_local global i32 0, align 4
@GPIO_COMMAND_ADDR = common dso_local global i32 0, align 4
@GPIO_COMMAND_IDLE = common dso_local global i32 0, align 4
@GPIO_COMMAND_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, i32, i32)* @gpio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_write(%struct.saa7134_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %8 = call i32 @saa_writeb(i32 %7, i32 255)
  %9 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @saa_writeb(i32 %9, i32 %10)
  %12 = load i32, i32* @SAA7134_GPIO_GPSTATUS2, align 4
  %13 = load i32, i32* @GPIO_COMMAND_ADDR, align 4
  %14 = call i32 @saa_writeb(i32 %12, i32 %13)
  %15 = load i32, i32* @SAA7134_GPIO_GPSTATUS2, align 4
  %16 = load i32, i32* @GPIO_COMMAND_IDLE, align 4
  %17 = call i32 @saa_writeb(i32 %15, i32 %16)
  %18 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 255
  %21 = call i32 @saa_writeb(i32 %18, i32 %20)
  %22 = load i32, i32* @SAA7134_GPIO_GPSTATUS2, align 4
  %23 = load i32, i32* @GPIO_COMMAND_WRITE, align 4
  %24 = call i32 @saa_writeb(i32 %22, i32 %23)
  %25 = load i32, i32* @SAA7134_GPIO_GPSTATUS2, align 4
  %26 = load i32, i32* @GPIO_COMMAND_IDLE, align 4
  %27 = call i32 @saa_writeb(i32 %25, i32 %26)
  %28 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 8
  %31 = call i32 @saa_writeb(i32 %28, i32 %30)
  %32 = load i32, i32* @SAA7134_GPIO_GPSTATUS2, align 4
  %33 = load i32, i32* @GPIO_COMMAND_WRITE, align 4
  %34 = call i32 @saa_writeb(i32 %32, i32 %33)
  %35 = load i32, i32* @SAA7134_GPIO_GPSTATUS2, align 4
  %36 = load i32, i32* @GPIO_COMMAND_IDLE, align 4
  %37 = call i32 @saa_writeb(i32 %35, i32 %36)
  ret i32 0
}

declare dso_local i32 @saa_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
