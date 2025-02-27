; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hadron/ver2/keymaps/default/extr_keymap.c_update_tri_layer_RGB.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hadron/ver2/keymaps/default/extr_keymap.c_update_tri_layer_RGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RGB_current_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_tri_layer_RGB(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @IS_LAYER_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @IS_LAYER_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32, i32* @RGB_current_mode, align 4
  %16 = call i32 @rgblight_mode(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @layer_on(i32 %17)
  br label %22

19:                                               ; preds = %10, %3
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @layer_off(i32 %20)
  br label %22

22:                                               ; preds = %19, %14
  ret void
}

declare dso_local i64 @IS_LAYER_ON(i32) #1

declare dso_local i32 @rgblight_mode(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @layer_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
