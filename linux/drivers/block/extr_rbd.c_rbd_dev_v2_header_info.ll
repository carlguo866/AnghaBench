; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_v2_header_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_v2_header_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*)* @rbd_dev_v2_header_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_dev_v2_header_info(%struct.rbd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %3, align 8
  %6 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %7 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %13 = call i32 @rbd_dev_v2_image_size(%struct.rbd_device* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %48

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %23 = call i32 @rbd_dev_v2_header_onetime(%struct.rbd_device* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %48

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %18
  %30 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %31 = call i32 @rbd_dev_v2_snap_context(%struct.rbd_device* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %39 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @kfree(i32* %41)
  %43 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %44 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %37, %34, %29
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %26, %16
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @rbd_dev_v2_image_size(%struct.rbd_device*) #1

declare dso_local i32 @rbd_dev_v2_header_onetime(%struct.rbd_device*) #1

declare dso_local i32 @rbd_dev_v2_snap_context(%struct.rbd_device*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
