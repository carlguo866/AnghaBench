; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_uinput.c_uinput_allocate_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_uinput.c_uinput_allocate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uinput_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@uinput_dev_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uinput_device*)* @uinput_allocate_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uinput_allocate_device(%struct.uinput_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uinput_device*, align 8
  store %struct.uinput_device* %0, %struct.uinput_device** %3, align 8
  %4 = call %struct.TYPE_3__* (...) @input_allocate_device()
  %5 = load %struct.uinput_device*, %struct.uinput_device** %3, align 8
  %6 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %5, i32 0, i32 0
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %6, align 8
  %7 = load %struct.uinput_device*, %struct.uinput_device** %3, align 8
  %8 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %25

14:                                               ; preds = %1
  %15 = load i32, i32* @uinput_dev_event, align 4
  %16 = load %struct.uinput_device*, %struct.uinput_device** %3, align 8
  %17 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  %20 = load %struct.uinput_device*, %struct.uinput_device** %3, align 8
  %21 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load %struct.uinput_device*, %struct.uinput_device** %3, align 8
  %24 = call i32 @input_set_drvdata(%struct.TYPE_3__* %22, %struct.uinput_device* %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %14, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.TYPE_3__* @input_allocate_device(...) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_3__*, %struct.uinput_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
