; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_claim_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_claim_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@LIBUSB_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_claim_interface(%struct.libusb20_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libusb20_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  store %struct.libusb20_device* %0, %struct.libusb20_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %9 = call %struct.TYPE_3__* @libusb_get_device(%struct.libusb20_device* %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %13, i32* %3, align 4
  br label %52

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 31
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %14
  %21 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %21, i32* %3, align 4
  br label %52

22:                                               ; preds = %17
  %23 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %24 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.libusb20_device*, %struct.libusb20_device** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @libusb_detach_kernel_driver(%struct.libusb20_device* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %50

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %22
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CTX_LOCK(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = shl i32 1, %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @CTX_UNLOCK(i32 %48)
  br label %50

50:                                               ; preds = %35, %33
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %20, %12
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_3__* @libusb_get_device(%struct.libusb20_device*) #1

declare dso_local i32 @libusb_detach_kernel_driver(%struct.libusb20_device*, i32) #1

declare dso_local i32 @CTX_LOCK(i32) #1

declare dso_local i32 @CTX_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
