; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66_hotswap/prototype/extr_prototype.c_backlight_init_ports.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66_hotswap/prototype/extr_prototype.c_backlight_init_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"init_backlight_pin()\0A\00", align 1
@DDRD = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_init_ports() #0 {
  %1 = call i32 @print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @DDRD, align 4
  %3 = or i32 %2, 1
  store i32 %3, i32* @DDRD, align 4
  %4 = load i32, i32* @DDRD, align 4
  %5 = or i32 %4, 16
  store i32 %5, i32* @DDRD, align 4
  %6 = load i32, i32* @DDRD, align 4
  %7 = or i32 %6, 2
  store i32 %7, i32* @DDRD, align 4
  %8 = load i32, i32* @PORTD, align 4
  %9 = and i32 %8, -2
  store i32 %9, i32* @PORTD, align 4
  %10 = load i32, i32* @PORTD, align 4
  %11 = and i32 %10, -17
  store i32 %11, i32* @PORTD, align 4
  %12 = load i32, i32* @PORTD, align 4
  %13 = and i32 %12, -3
  store i32 %13, i32* @PORTD, align 4
  ret void
}

declare dso_local i32 @print(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
