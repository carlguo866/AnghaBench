; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_set_device_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_set_device_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Device failed to enter state %d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, i32)* @rt73usb_set_device_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt73usb_set_device_state(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %18 [
    i32 130, label %7
    i32 131, label %10
    i32 132, label %13
    i32 133, label %13
    i32 134, label %14
    i32 129, label %14
    i32 128, label %14
    i32 135, label %14
  ]

7:                                                ; preds = %2
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %9 = call i32 @rt73usb_enable_radio(%struct.rt2x00_dev* %8)
  store i32 %9, i32* %5, align 4
  br label %21

10:                                               ; preds = %2
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %12 = call i32 @rt73usb_disable_radio(%struct.rt2x00_dev* %11)
  br label %21

13:                                               ; preds = %2, %2
  br label %21

14:                                               ; preds = %2, %2, %2, %2
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @rt73usb_set_state(%struct.rt2x00_dev* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %14, %13, %10, %7
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @rt2x00_err(%struct.rt2x00_dev* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @rt73usb_enable_radio(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt73usb_disable_radio(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt73usb_set_state(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
