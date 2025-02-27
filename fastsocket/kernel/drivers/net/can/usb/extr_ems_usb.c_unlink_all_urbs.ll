; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/usb/extr_ems_usb.c_unlink_all_urbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/usb/extr_ems_usb.c_unlink_all_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ems_usb = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MAX_TX_URBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ems_usb*)* @unlink_all_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlink_all_urbs(%struct.ems_usb* %0) #0 {
  %2 = alloca %struct.ems_usb*, align 8
  %3 = alloca i32, align 4
  store %struct.ems_usb* %0, %struct.ems_usb** %2, align 8
  %4 = load %struct.ems_usb*, %struct.ems_usb** %2, align 8
  %5 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @usb_unlink_urb(i32 %6)
  %8 = load %struct.ems_usb*, %struct.ems_usb** %2, align 8
  %9 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %8, i32 0, i32 3
  %10 = call i32 @usb_kill_anchored_urbs(i32* %9)
  %11 = load %struct.ems_usb*, %struct.ems_usb** %2, align 8
  %12 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %11, i32 0, i32 2
  %13 = call i32 @usb_kill_anchored_urbs(i32* %12)
  %14 = load %struct.ems_usb*, %struct.ems_usb** %2, align 8
  %15 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %14, i32 0, i32 1
  %16 = call i32 @atomic_set(i32* %15, i32 0)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %30, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @MAX_TX_URBS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i32, i32* @MAX_TX_URBS, align 4
  %23 = load %struct.ems_usb*, %struct.ems_usb** %2, align 8
  %24 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %22, i32* %29, align 4
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %17

33:                                               ; preds = %17
  ret void
}

declare dso_local i32 @usb_unlink_urb(i32) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
