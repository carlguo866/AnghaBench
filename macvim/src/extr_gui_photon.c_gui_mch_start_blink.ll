; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_mch_start_blink.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_mch_start_blink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@blink_waittime = common dso_local global i64 0, align 8
@blink_ontime = common dso_local global i64 0, align 8
@blink_offtime = common dso_local global i64 0, align 8
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@gui_ph_timer_cursor = common dso_local global i32 0, align 4
@Pt_ARG_TIMER_INITIAL = common dso_local global i32 0, align 4
@BLINK_ON = common dso_local global i32 0, align 4
@blink_state = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_start_blink() #0 {
  %1 = load i64, i64* @blink_waittime, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %21

3:                                                ; preds = %0
  %4 = load i64, i64* @blink_ontime, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  %7 = load i64, i64* @blink_offtime, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load i32, i32* @gui_ph_timer_cursor, align 4
  %14 = load i32, i32* @Pt_ARG_TIMER_INITIAL, align 4
  %15 = load i64, i64* @blink_waittime, align 8
  %16 = call i32 @PtSetResource(i32 %13, i32 %14, i64 %15, i32 0)
  %17 = load i32, i32* @BLINK_ON, align 4
  store i32 %17, i32* @blink_state, align 4
  %18 = load i32, i32* @TRUE, align 4
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i32 @gui_update_cursor(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %12, %9, %6, %3, %0
  ret void
}

declare dso_local i32 @PtSetResource(i32, i32, i64, i32) #1

declare dso_local i32 @gui_update_cursor(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
