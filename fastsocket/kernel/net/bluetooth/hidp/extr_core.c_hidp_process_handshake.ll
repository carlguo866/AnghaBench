; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_process_handshake.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_process_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"session %p param 0x%02x\00", align 1
@HIDP_TRANS_HID_CONTROL = common dso_local global i32 0, align 4
@HIDP_CTRL_SOFT_RESET = common dso_local global i32 0, align 4
@HIDP_TRANS_HANDSHAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidp_session*, i8)* @hidp_process_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidp_process_handshake(%struct.hidp_session* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.hidp_session*, align 8
  %4 = alloca i8, align 1
  store %struct.hidp_session* %0, %struct.hidp_session** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %6 = load i8, i8* %4, align 1
  %7 = call i32 @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.hidp_session* %5, i8 zeroext %6)
  %8 = load i8, i8* %4, align 1
  %9 = zext i8 %8 to i32
  switch i32 %9, label %19 [
    i32 128, label %10
    i32 129, label %11
    i32 132, label %11
    i32 130, label %11
    i32 133, label %11
    i32 131, label %12
    i32 134, label %13
  ]

10:                                               ; preds = %2
  br label %24

11:                                               ; preds = %2, %2, %2, %2
  br label %24

12:                                               ; preds = %2
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %15 = load i32, i32* @HIDP_TRANS_HID_CONTROL, align 4
  %16 = load i32, i32* @HIDP_CTRL_SOFT_RESET, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @__hidp_send_ctrl_message(%struct.hidp_session* %14, i32 %17, i32* null, i32 0)
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %21 = load i32, i32* @HIDP_TRANS_HANDSHAKE, align 4
  %22 = or i32 %21, 133
  %23 = call i32 @__hidp_send_ctrl_message(%struct.hidp_session* %20, i32 %22, i32* null, i32 0)
  br label %24

24:                                               ; preds = %19, %13, %12, %11, %10
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hidp_session*, i8 zeroext) #1

declare dso_local i32 @__hidp_send_ctrl_message(%struct.hidp_session*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
