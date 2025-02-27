; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_synaptics_usb.c_synusb_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_synaptics_usb.c_synusb_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.synusb = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @synusb_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synusb_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.synusb*, align 8
  %4 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %6 = call %struct.synusb* @input_get_drvdata(%struct.input_dev* %5)
  store %struct.synusb* %6, %struct.synusb** %3, align 8
  %7 = load %struct.synusb*, %struct.synusb** %3, align 8
  %8 = getelementptr inbounds %struct.synusb, %struct.synusb* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = call i32 @usb_autopm_get_interface(%struct.TYPE_3__* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.synusb*, %struct.synusb** %3, align 8
  %12 = getelementptr inbounds %struct.synusb, %struct.synusb* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.synusb*, %struct.synusb** %3, align 8
  %15 = getelementptr inbounds %struct.synusb, %struct.synusb* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @usb_kill_urb(i32 %16)
  %18 = load %struct.synusb*, %struct.synusb** %3, align 8
  %19 = getelementptr inbounds %struct.synusb, %struct.synusb* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.synusb*, %struct.synusb** %3, align 8
  %23 = getelementptr inbounds %struct.synusb, %struct.synusb* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.synusb*, %struct.synusb** %3, align 8
  %25 = getelementptr inbounds %struct.synusb, %struct.synusb* %24, i32 0, i32 2
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = load %struct.synusb*, %struct.synusb** %3, align 8
  %31 = getelementptr inbounds %struct.synusb, %struct.synusb* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = call i32 @usb_autopm_put_interface(%struct.TYPE_3__* %32)
  br label %34

34:                                               ; preds = %29, %1
  ret void
}

declare dso_local %struct.synusb* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @usb_autopm_get_interface(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
