; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/kbdfans/kbd6x/keymaps/othi/extr_keymap.c_dance_ALT_NM_reset.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/kbdfans/kbd6x/keymaps/othi/extr_keymap.c_dance_ALT_NM_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@KC_LALT = common dso_local global i32 0, align 4
@NM_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dance_ALT_NM_reset(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @KC_LALT, align 4
  %11 = call i32 @unregister_code(i32 %10)
  br label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @KC_LALT, align 4
  %14 = call i32 @unregister_code(i32 %13)
  %15 = load i32, i32* @NM_MODE, align 4
  %16 = call i32 @layer_off(i32 %15)
  br label %17

17:                                               ; preds = %12, %9
  ret void
}

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @layer_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
