; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/40percentclub/ut47/extr_led.c_led_set.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/40percentclub/ut47/extr_led.c_led_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@DDRB = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@DDRD = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %5 = shl i32 1, %4
  %6 = and i32 %3, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load i32, i32* @DDRB, align 4
  %10 = or i32 %9, 1
  store i32 %10, i32* @DDRB, align 4
  %11 = load i32, i32* @PORTB, align 4
  %12 = and i32 %11, -2
  store i32 %12, i32* @PORTB, align 4
  %13 = load i32, i32* @DDRD, align 4
  %14 = or i32 %13, 32
  store i32 %14, i32* @DDRD, align 4
  %15 = load i32, i32* @PORTD, align 4
  %16 = and i32 %15, -33
  store i32 %16, i32* @PORTD, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load i32, i32* @DDRB, align 4
  %19 = and i32 %18, -2
  store i32 %19, i32* @DDRB, align 4
  %20 = load i32, i32* @PORTB, align 4
  %21 = and i32 %20, -2
  store i32 %21, i32* @PORTB, align 4
  %22 = load i32, i32* @DDRD, align 4
  %23 = and i32 %22, -33
  store i32 %23, i32* @DDRD, align 4
  %24 = load i32, i32* @PORTD, align 4
  %25 = and i32 %24, -33
  store i32 %25, i32* @PORTD, align 4
  br label %26

26:                                               ; preds = %17, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
