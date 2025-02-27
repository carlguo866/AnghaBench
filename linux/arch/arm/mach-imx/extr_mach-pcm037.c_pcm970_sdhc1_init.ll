; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-pcm037.c_pcm970_sdhc1_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-pcm037.c_pcm970_sdhc1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@SDHC1_GPIO_DET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sdhc-detect\00", align 1
@MX31_PIN_SCK6 = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@SDHC1_GPIO_WP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i8*)* @pcm970_sdhc1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm970_sdhc1_init(%struct.device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @SDHC1_GPIO_DET, align 4
  %10 = call i32 @gpio_request(i32 %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %4, align 4
  br label %33

15:                                               ; preds = %3
  %16 = load i32, i32* @SDHC1_GPIO_DET, align 4
  %17 = call i32 @gpio_direction_input(i32 %16)
  %18 = load i32, i32* @MX31_PIN_SCK6, align 4
  %19 = call i32 @IOMUX_TO_GPIO(i32 %18)
  %20 = call i32 @gpio_to_irq(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @request_irq(i32 %20, i32 %21, i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %29

28:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %33

29:                                               ; preds = %27
  %30 = load i32, i32* @SDHC1_GPIO_DET, align 4
  %31 = call i32 @gpio_free(i32 %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %28, %13
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @IOMUX_TO_GPIO(i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
