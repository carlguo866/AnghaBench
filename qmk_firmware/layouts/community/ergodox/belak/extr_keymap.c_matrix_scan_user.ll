; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/belak/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/belak/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@td_led_override = common dso_local global i32 0, align 4
@SYMB = common dso_local global i32 0, align 4
@NUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = call i32 (...) @ergodox_board_led_off()
  %2 = call i32 (...) @ergodox_right_led_1_off()
  %3 = call i32 (...) @ergodox_right_led_2_off()
  %4 = call i32 (...) @ergodox_right_led_3_off()
  %5 = load i32, i32* @td_led_override, align 4
  switch i32 %5, label %10 [
    i32 1, label %6
    i32 2, label %8
  ]

6:                                                ; preds = %0
  %7 = call i32 (...) @ergodox_right_led_1_on()
  br label %23

8:                                                ; preds = %0
  %9 = call i32 (...) @ergodox_right_led_2_on()
  br label %23

10:                                               ; preds = %0
  %11 = load i32, i32* @SYMB, align 4
  %12 = call i32 @LAYER_ON(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 (...) @ergodox_right_led_1_on()
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i32, i32* @NUMP, align 4
  %18 = call i32 @LAYER_ON(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 (...) @ergodox_right_led_2_on()
  br label %22

22:                                               ; preds = %20, %16
  br label %23

23:                                               ; preds = %22, %8, %6
  ret void
}

declare dso_local i32 @ergodox_board_led_off(...) #1

declare dso_local i32 @ergodox_right_led_1_off(...) #1

declare dso_local i32 @ergodox_right_led_2_off(...) #1

declare dso_local i32 @ergodox_right_led_3_off(...) #1

declare dso_local i32 @ergodox_right_led_1_on(...) #1

declare dso_local i32 @ergodox_right_led_2_on(...) #1

declare dso_local i32 @LAYER_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
