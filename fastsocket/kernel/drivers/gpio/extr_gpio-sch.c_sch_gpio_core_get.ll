; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_gpio-sch.c_sch_gpio_core_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_gpio-sch.c_sch_gpio_core_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@CGLV = common dso_local global i32 0, align 4
@gpio_ba = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @sch_gpio_core_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch_gpio_core_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @CGLV, align 4
  %9 = load i32, i32* %4, align 4
  %10 = udiv i32 %9, 8
  %11 = add i32 %8, %10
  %12 = trunc i32 %11 to i16
  store i16 %12, i16* %6, align 2
  %13 = load i32, i32* %4, align 4
  %14 = urem i32 %13, 8
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %7, align 2
  %16 = load i64, i64* @gpio_ba, align 8
  %17 = load i16, i16* %6, align 2
  %18 = zext i16 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = call i32 @inb(i64 %19)
  %21 = load i16, i16* %7, align 2
  %22 = zext i16 %21 to i32
  %23 = shl i32 1, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
