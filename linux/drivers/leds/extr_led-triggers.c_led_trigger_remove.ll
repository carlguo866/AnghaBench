; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-triggers.c_led_trigger_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-triggers.c_led_trigger_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_trigger_remove(%struct.led_classdev* %0) #0 {
  %2 = alloca %struct.led_classdev*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %2, align 8
  %3 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %4 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %3, i32 0, i32 0
  %5 = call i32 @down_write(i32* %4)
  %6 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %7 = call i32 @led_trigger_set(%struct.led_classdev* %6, i32* null)
  %8 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %9 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %8, i32 0, i32 0
  %10 = call i32 @up_write(i32* %9)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @led_trigger_set(%struct.led_classdev*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
