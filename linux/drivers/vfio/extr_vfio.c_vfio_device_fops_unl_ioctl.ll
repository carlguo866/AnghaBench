; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_device_fops_unl_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_device_fops_unl_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vfio_device* }
%struct.vfio_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i32, i32, i64)* }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @vfio_device_fops_unl_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vfio_device_fops_unl_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.vfio_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.vfio_device*, %struct.vfio_device** %10, align 8
  store %struct.vfio_device* %11, %struct.vfio_device** %8, align 8
  %12 = load %struct.vfio_device*, %struct.vfio_device** %8, align 8
  %13 = getelementptr inbounds %struct.vfio_device, %struct.vfio_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64 (i32, i32, i64)*, i64 (i32, i32, i64)** %15, align 8
  %17 = icmp ne i64 (i32, i32, i64)* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %4, align 8
  br label %37

25:                                               ; preds = %3
  %26 = load %struct.vfio_device*, %struct.vfio_device** %8, align 8
  %27 = getelementptr inbounds %struct.vfio_device, %struct.vfio_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64 (i32, i32, i64)*, i64 (i32, i32, i64)** %29, align 8
  %31 = load %struct.vfio_device*, %struct.vfio_device** %8, align 8
  %32 = getelementptr inbounds %struct.vfio_device, %struct.vfio_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i64, i64* %7, align 8
  %36 = call i64 %30(i32 %33, i32 %34, i64 %35)
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %25, %22
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
