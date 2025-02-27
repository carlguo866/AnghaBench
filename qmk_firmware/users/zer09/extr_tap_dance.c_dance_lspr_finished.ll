; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/zer09/extr_tap_dance.c_dance_lspr_finished.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/zer09/extr_tap_dance.c_dance_lspr_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@lsprtap_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ENABLED = common dso_local global i32 0, align 4
@rbw_led_keys = common dso_local global %struct.TYPE_3__* null, align 8
@RBW_LSPR = common dso_local global i64 0, align 8
@KC_LALT = common dso_local global i32 0, align 4
@KC_LGUI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dance_lspr_finished(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @cur_dance(i32* %5)
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lsprtap_state, i32 0, i32 0), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lsprtap_state, i32 0, i32 0), align 4
  switch i32 %7, label %16 [
    i32 128, label %8
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @ENABLED, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rbw_led_keys, align 8
  %11 = load i64, i64* @RBW_LSPR, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %9, i32* %13, align 4
  %14 = load i32, i32* @KC_LALT, align 4
  %15 = call i32 @register_code(i32 %14)
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @KC_LGUI, align 4
  %18 = call i32 @register_code(i32 %17)
  br label %19

19:                                               ; preds = %16, %8
  ret void
}

declare dso_local i32 @cur_dance(i32*) #1

declare dso_local i32 @register_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
