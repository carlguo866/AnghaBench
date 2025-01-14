; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_dev_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_dev_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32, i32, i32* }

@libusb20_dummy_methods = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.libusb20_device* @libusb20_dev_alloc() #0 {
  %1 = alloca %struct.libusb20_device*, align 8
  %2 = alloca %struct.libusb20_device*, align 8
  %3 = call %struct.libusb20_device* @malloc(i32 16)
  store %struct.libusb20_device* %3, %struct.libusb20_device** %2, align 8
  %4 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %5 = icmp eq %struct.libusb20_device* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.libusb20_device* null, %struct.libusb20_device** %1, align 8
  br label %17

7:                                                ; preds = %0
  %8 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %9 = call i32 @memset(%struct.libusb20_device* %8, i32 0, i32 16)
  %10 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %11 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %10, i32 0, i32 0
  store i32 -1, i32* %11, align 8
  %12 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %13 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %12, i32 0, i32 1
  store i32 -1, i32* %13, align 4
  %14 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %15 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %14, i32 0, i32 2
  store i32* @libusb20_dummy_methods, i32** %15, align 8
  %16 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  store %struct.libusb20_device* %16, %struct.libusb20_device** %1, align 8
  br label %17

17:                                               ; preds = %7, %6
  %18 = load %struct.libusb20_device*, %struct.libusb20_device** %1, align 8
  ret %struct.libusb20_device* %18
}

declare dso_local %struct.libusb20_device* @malloc(i32) #1

declare dso_local i32 @memset(%struct.libusb20_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
