; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/kona_classic/keymaps/ansi/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/kona_classic/keymaps/ansi/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MODS_SHIFT_GUI_MASK = common dso_local global i32 0, align 4
@KC_GRV = common dso_local global i32 0, align 4
@KC_ESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %42 [
    i32 128, label %7
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %7
  %14 = call i32 (...) @get_mods()
  %15 = load i32, i32* @MODS_SHIFT_GUI_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* @KC_GRV, align 4
  %20 = call i32 @add_key(i32 %19)
  %21 = call i32 (...) @send_keyboard_report()
  br label %26

22:                                               ; preds = %13
  %23 = load i32, i32* @KC_ESC, align 4
  %24 = call i32 @add_key(i32 %23)
  %25 = call i32 (...) @send_keyboard_report()
  br label %26

26:                                               ; preds = %22, %18
  br label %41

27:                                               ; preds = %7
  %28 = call i32 (...) @get_mods()
  %29 = load i32, i32* @MODS_SHIFT_GUI_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @KC_GRV, align 4
  %34 = call i32 @del_key(i32 %33)
  %35 = call i32 (...) @send_keyboard_report()
  br label %40

36:                                               ; preds = %27
  %37 = load i32, i32* @KC_ESC, align 4
  %38 = call i32 @del_key(i32 %37)
  %39 = call i32 (...) @send_keyboard_report()
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %26
  store i32 0, i32* %3, align 4
  br label %43

42:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @add_key(i32) #1

declare dso_local i32 @send_keyboard_report(...) #1

declare dso_local i32 @del_key(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
