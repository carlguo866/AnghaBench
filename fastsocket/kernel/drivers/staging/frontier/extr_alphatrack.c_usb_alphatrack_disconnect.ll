; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/frontier/extr_alphatrack.c_usb_alphatrack_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/frontier/extr_alphatrack.c_usb_alphatrack_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32 }
%struct.usb_alphatrack = type { i32, i32, i32*, i32 }

@disconnect_mutex = common dso_local global i32 0, align 4
@usb_alphatrack_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Alphatrack Surface #%d now disconnected\0A\00", align 1
@USB_ALPHATRACK_MINOR_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @usb_alphatrack_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_alphatrack_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_alphatrack*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = call i32 @mutex_lock(i32* @disconnect_mutex)
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.usb_alphatrack* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.usb_alphatrack* %7, %struct.usb_alphatrack** %3, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = call i32 @usb_set_intfdata(%struct.usb_interface* %8, i32* null)
  %10 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %3, align 8
  %11 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %10, i32 0, i32 1
  %12 = call i32 @down(i32* %11)
  %13 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %17 = call i32 @usb_deregister_dev(%struct.usb_interface* %16, i32* @usb_alphatrack_class)
  %18 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %3, align 8
  %19 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %3, align 8
  %24 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %23, i32 0, i32 1
  %25 = call i32 @up(i32* %24)
  %26 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %3, align 8
  %27 = call i32 @usb_alphatrack_delete(%struct.usb_alphatrack* %26)
  br label %34

28:                                               ; preds = %1
  %29 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %3, align 8
  %30 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %3, align 8
  %32 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %31, i32 0, i32 1
  %33 = call i32 @up(i32* %32)
  br label %34

34:                                               ; preds = %28, %22
  %35 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %3, align 8
  %36 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %35, i32 0, i32 0
  %37 = call i32 @atomic_set(i32* %36, i32 0)
  %38 = call i32 @mutex_unlock(i32* @disconnect_mutex)
  %39 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %40 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %39, i32 0, i32 1
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @USB_ALPHATRACK_MINOR_BASE, align 8
  %44 = sub nsw i64 %42, %43
  %45 = call i32 @dev_info(i32* %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %44)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.usb_alphatrack* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @usb_alphatrack_delete(%struct.usb_alphatrack*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
