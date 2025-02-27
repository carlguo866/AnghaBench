; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb.c_usb_ifnum_to_if.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb.c_usb_ifnum_to_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.usb_device = type { %struct.usb_host_config* }
%struct.usb_host_config = type { %struct.usb_interface**, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_host_config*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 0
  %10 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  store %struct.usb_host_config* %10, %struct.usb_host_config** %6, align 8
  %11 = load %struct.usb_host_config*, %struct.usb_host_config** %6, align 8
  %12 = icmp ne %struct.usb_host_config* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.usb_interface* null, %struct.usb_interface** %3, align 8
  br label %51

14:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %47, %14
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.usb_host_config*, %struct.usb_host_config** %6, align 8
  %18 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %15
  %23 = load %struct.usb_host_config*, %struct.usb_host_config** %6, align 8
  %24 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %23, i32 0, i32 0
  %25 = load %struct.usb_interface**, %struct.usb_interface*** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %25, i64 %27
  %29 = load %struct.usb_interface*, %struct.usb_interface** %28, align 8
  %30 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %22
  %39 = load %struct.usb_host_config*, %struct.usb_host_config** %6, align 8
  %40 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %39, i32 0, i32 0
  %41 = load %struct.usb_interface**, %struct.usb_interface*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %41, i64 %43
  %45 = load %struct.usb_interface*, %struct.usb_interface** %44, align 8
  store %struct.usb_interface* %45, %struct.usb_interface** %3, align 8
  br label %51

46:                                               ; preds = %22
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %15

50:                                               ; preds = %15
  store %struct.usb_interface* null, %struct.usb_interface** %3, align 8
  br label %51

51:                                               ; preds = %50, %38, %13
  %52 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  ret %struct.usb_interface* %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
