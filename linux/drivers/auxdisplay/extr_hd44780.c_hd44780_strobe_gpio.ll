; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_hd44780.c_hd44780_strobe_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_hd44780.c_hd44780_strobe_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hd44780 = type { i32* }

@PIN_CTRL_E = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hd44780*)* @hd44780_strobe_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hd44780_strobe_gpio(%struct.hd44780* %0) #0 {
  %2 = alloca %struct.hd44780*, align 8
  store %struct.hd44780* %0, %struct.hd44780** %2, align 8
  %3 = call i32 @udelay(i32 20)
  %4 = load %struct.hd44780*, %struct.hd44780** %2, align 8
  %5 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @PIN_CTRL_E, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @gpiod_set_value_cansleep(i32 %9, i32 1)
  %11 = call i32 @udelay(i32 40)
  %12 = load %struct.hd44780*, %struct.hd44780** %2, align 8
  %13 = getelementptr inbounds %struct.hd44780, %struct.hd44780* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @PIN_CTRL_E, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gpiod_set_value_cansleep(i32 %17, i32 0)
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
