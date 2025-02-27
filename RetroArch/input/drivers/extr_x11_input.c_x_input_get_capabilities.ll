; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_x11_input.c_x_input_get_capabilities.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_x11_input.c_x_input_get_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RETRO_DEVICE_JOYPAD = common dso_local global i32 0, align 4
@RETRO_DEVICE_MOUSE = common dso_local global i32 0, align 4
@RETRO_DEVICE_KEYBOARD = common dso_local global i32 0, align 4
@RETRO_DEVICE_LIGHTGUN = common dso_local global i32 0, align 4
@RETRO_DEVICE_POINTER = common dso_local global i32 0, align 4
@RETRO_DEVICE_ANALOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @x_input_get_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x_input_get_capabilities(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @RETRO_DEVICE_JOYPAD, align 4
  %5 = shl i32 1, %4
  %6 = load i32, i32* %3, align 4
  %7 = or i32 %6, %5
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @RETRO_DEVICE_MOUSE, align 4
  %9 = shl i32 1, %8
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @RETRO_DEVICE_KEYBOARD, align 4
  %13 = shl i32 1, %12
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @RETRO_DEVICE_LIGHTGUN, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @RETRO_DEVICE_POINTER, align 4
  %21 = shl i32 1, %20
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @RETRO_DEVICE_ANALOG, align 4
  %25 = shl i32 1, %24
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
