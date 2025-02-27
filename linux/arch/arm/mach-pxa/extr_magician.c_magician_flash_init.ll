; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_magician.c_magician_flash_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_magician.c_magician_flash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@EGPIO_MAGICIAN_FLASH_VPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"flash Vpp enable\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Cannot request flash enable GPIO (%i)\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Cannot set direction for flash enable (%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @magician_flash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @magician_flash_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load i32, i32* @EGPIO_MAGICIAN_FLASH_VPP, align 4
  %6 = call i32 @gpio_request(i32 %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %25

13:                                               ; preds = %1
  %14 = load i32, i32* @EGPIO_MAGICIAN_FLASH_VPP, align 4
  %15 = call i32 @gpio_direction_output(i32 %14, i32 1)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EGPIO_MAGICIAN_FLASH_VPP, align 4
  %22 = call i32 @gpio_free(i32 %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %9
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
