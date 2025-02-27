; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_sms-cards.c_sms_board_led_feedback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_sms-cards.c_sms_board_led_feedback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32 }
%struct.sms_board = type { i32, i32 }

@SMS_LED_LO = common dso_local global i32 0, align 4
@SMS_LED_HI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sms_board_led_feedback(%struct.smscore_device_t* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smscore_device_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sms_board*, align 8
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %9 = call i32 @smscore_get_board_id(%struct.smscore_device_t* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.sms_board* @sms_get_board(i32 %10)
  store %struct.sms_board* %11, %struct.sms_board** %7, align 8
  %12 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %13 = call i32 @smscore_led_state(%struct.smscore_device_t* %12, i32 -1)
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %45 [
    i32 128, label %19
  ]

19:                                               ; preds = %17
  %20 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %21 = load %struct.sms_board*, %struct.sms_board** %7, align 8
  %22 = getelementptr inbounds %struct.sms_board, %struct.sms_board* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SMS_LED_LO, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  %30 = call i32 @sms_set_gpio(%struct.smscore_device_t* %20, i32 %23, i32 %29)
  %31 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %32 = load %struct.sms_board*, %struct.sms_board** %7, align 8
  %33 = getelementptr inbounds %struct.sms_board, %struct.sms_board* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SMS_LED_HI, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = call i32 @sms_set_gpio(%struct.smscore_device_t* %31, i32 %34, i32 %40)
  %42 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @smscore_led_state(%struct.smscore_device_t* %42, i32 %43)
  br label %45

45:                                               ; preds = %17, %19
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @smscore_get_board_id(%struct.smscore_device_t*) #1

declare dso_local %struct.sms_board* @sms_get_board(i32) #1

declare dso_local i32 @smscore_led_state(%struct.smscore_device_t*, i32) #1

declare dso_local i32 @sms_set_gpio(%struct.smscore_device_t*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
