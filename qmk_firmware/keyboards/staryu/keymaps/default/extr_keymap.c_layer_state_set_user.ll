; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/staryu/keymaps/default/extr_keymap.c_layer_state_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/staryu/keymaps/default/extr_keymap.c_layer_state_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layer_state_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @biton32(i32 %3)
  switch i32 %4, label %14 [
    i32 131, label %5
    i32 130, label %7
    i32 129, label %9
    i32 128, label %11
    i32 132, label %13
  ]

5:                                                ; preds = %1
  %6 = call i32 (...) @rgblight_sethsv_noeeprom_cyan()
  br label %16

7:                                                ; preds = %1
  %8 = call i32 (...) @rgblight_sethsv_noeeprom_magenta()
  br label %16

9:                                                ; preds = %1
  %10 = call i32 (...) @rgblight_sethsv_noeeprom_red()
  br label %16

11:                                               ; preds = %1
  %12 = call i32 (...) @rgblight_sethsv_noeeprom_orange()
  br label %16

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %1, %13
  %15 = call i32 (...) @rgblight_sethsv_noeeprom_white()
  br label %16

16:                                               ; preds = %14, %11, %9, %7, %5
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_cyan(...) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_magenta(...) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_red(...) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_orange(...) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_white(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
