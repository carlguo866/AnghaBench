; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_set_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_set_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sony_sc = type { i32 }

@BUZZ_CONTROLLER = common dso_local global i32 0, align 4
@SONY_WORKER_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sony_sc*)* @sony_set_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sony_set_leds(%struct.sony_sc* %0) #0 {
  %2 = alloca %struct.sony_sc*, align 8
  store %struct.sony_sc* %0, %struct.sony_sc** %2, align 8
  %3 = load %struct.sony_sc*, %struct.sony_sc** %2, align 8
  %4 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @BUZZ_CONTROLLER, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.sony_sc*, %struct.sony_sc** %2, align 8
  %11 = load i32, i32* @SONY_WORKER_STATE, align 4
  %12 = call i32 @sony_schedule_work(%struct.sony_sc* %10, i32 %11)
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.sony_sc*, %struct.sony_sc** %2, align 8
  %15 = call i32 @buzz_set_leds(%struct.sony_sc* %14)
  br label %16

16:                                               ; preds = %13, %9
  ret void
}

declare dso_local i32 @sony_schedule_work(%struct.sony_sc*, i32) #1

declare dso_local i32 @buzz_set_leds(%struct.sony_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
