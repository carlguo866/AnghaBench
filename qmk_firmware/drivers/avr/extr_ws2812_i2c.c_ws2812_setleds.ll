; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/avr/extr_ws2812_i2c.c_ws2812_setleds.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/avr/extr_ws2812_i2c.c_ws2812_setleds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ws2812_setleds.s_init = internal global i32 0, align 4
@WS2812_ADDRESS = common dso_local global i32 0, align 4
@WS2812_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ws2812_setleds(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @ws2812_setleds.s_init, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = call i32 (...) @ws2812_init()
  store i32 1, i32* @ws2812_setleds.s_init, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = load i32, i32* @WS2812_ADDRESS, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @WS2812_TIMEOUT, align 4
  %17 = call i32 @i2c_transmit(i32 %10, i32* %11, i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @ws2812_init(...) #1

declare dso_local i32 @i2c_transmit(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
