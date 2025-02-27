; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/wiiu/extr_wpad_driver.c_wpad_poll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/wiiu/extr_wpad_driver.c_wpad_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@PAD_GAMEPAD = common dso_local global i32 0, align 4
@button_state = common dso_local global i32 0, align 4
@analog_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wpad_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpad_poll() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @PAD_GAMEPAD, align 4
  %4 = call i32 @VPADRead(i32 %3, %struct.TYPE_5__* %1, i32 1, i64* %2)
  %5 = load i64, i64* %2, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %19

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @update_button_state(i32* @button_state, i32 %10)
  %12 = load i32, i32* @analog_state, align 4
  %13 = call i32 @update_analog_state(i32 %12, %struct.TYPE_5__* %1)
  %14 = load i32, i32* @analog_state, align 4
  %15 = call i32 @update_touch_state(i32 %14, i32* @button_state, %struct.TYPE_5__* %1)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @check_panic_button(i32 %17)
  br label %19

19:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @VPADRead(i32, %struct.TYPE_5__*, i32, i64*) #1

declare dso_local i32 @update_button_state(i32*, i32) #1

declare dso_local i32 @update_analog_state(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @update_touch_state(i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @check_panic_button(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
