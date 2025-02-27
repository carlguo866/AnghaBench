; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c__usb_ep0_on_tansfer_ok.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c__usb_ep0_on_tansfer_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }
%struct.usb_module = type { i32 }

@UDD_EPCTRL_DATA_OUT = common dso_local global i64 0, align 8
@udd_ep_control_state = common dso_local global i64 0, align 8
@UDD_EPCTRL_DATA_IN = common dso_local global i64 0, align 8
@udd_g_ctrlreq = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@UDD_EPCTRL_SETUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_module*, i8*)* @_usb_ep0_on_tansfer_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_usb_ep0_on_tansfer_ok(%struct.usb_module* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_module*, align 8
  %4 = alloca i8*, align 8
  store %struct.usb_module* %0, %struct.usb_module** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i64, i64* @UDD_EPCTRL_DATA_OUT, align 8
  %6 = load i64, i64* @udd_ep_control_state, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @udd_ctrl_out_received(i8* %9)
  br label %26

11:                                               ; preds = %2
  %12 = load i64, i64* @UDD_EPCTRL_DATA_IN, align 8
  %13 = load i64, i64* @udd_ep_control_state, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 (...) @udd_ctrl_in_sent()
  br label %25

17:                                               ; preds = %11
  %18 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @udd_g_ctrlreq, i32 0, i32 0), align 8
  %19 = icmp ne i32 (...)* null, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @udd_g_ctrlreq, i32 0, i32 0), align 8
  %22 = call i32 (...) %21()
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i64, i64* @UDD_EPCTRL_SETUP, align 8
  store i64 %24, i64* @udd_ep_control_state, align 8
  br label %25

25:                                               ; preds = %23, %15
  br label %26

26:                                               ; preds = %25, %8
  ret void
}

declare dso_local i32 @udd_ctrl_out_received(i8*) #1

declare dso_local i32 @udd_ctrl_in_sent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
