; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-digicolor.c_dc_timer_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-digicolor.c_dc_timer_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }
%struct.digicolor_timer = type { i32, i64 }

@CONTROL_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clock_event_device*)* @dc_timer_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_timer_disable(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  %3 = alloca %struct.digicolor_timer*, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %4 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %5 = call %struct.digicolor_timer* @dc_timer(%struct.clock_event_device* %4)
  store %struct.digicolor_timer* %5, %struct.digicolor_timer** %3, align 8
  %6 = load i32, i32* @CONTROL_DISABLE, align 4
  %7 = load %struct.digicolor_timer*, %struct.digicolor_timer** %3, align 8
  %8 = getelementptr inbounds %struct.digicolor_timer, %struct.digicolor_timer* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.digicolor_timer*, %struct.digicolor_timer** %3, align 8
  %11 = getelementptr inbounds %struct.digicolor_timer, %struct.digicolor_timer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @CONTROL(i32 %12)
  %14 = add nsw i64 %9, %13
  %15 = call i32 @writeb(i32 %6, i64 %14)
  ret void
}

declare dso_local %struct.digicolor_timer* @dc_timer(%struct.clock_event_device*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i64 @CONTROL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
