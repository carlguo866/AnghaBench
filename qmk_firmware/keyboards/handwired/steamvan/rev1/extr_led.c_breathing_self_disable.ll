; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/steamvan/rev1/extr_led.c_breathing_self_disable.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/steamvan/rev1/extr_led.c_breathing_self_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@kb_backlight_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BREATHING_HALT_OFF = common dso_local global i32 0, align 4
@breathing_halt = common dso_local global i32 0, align 4
@BREATHING_HALT_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @breathing_self_disable() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kb_backlight_config, i32 0, i32 0), align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load i32, i32* @BREATHING_HALT_OFF, align 4
  store i32 %4, i32* @breathing_halt, align 4
  br label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @BREATHING_HALT_ON, align 4
  store i32 %6, i32* @breathing_halt, align 4
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
