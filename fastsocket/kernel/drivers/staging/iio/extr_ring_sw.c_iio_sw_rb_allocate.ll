; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_ring_sw.c_iio_sw_rb_allocate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_ring_sw.c_iio_sw_rb_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_ring_buffer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32*, i32* }
%struct.iio_dev = type { i32 }
%struct.iio_sw_ring_buffer = type { %struct.iio_ring_buffer }

@GFP_KERNEL = common dso_local global i32 0, align 4
@iio_sw_ring_type = common dso_local global i32 0, align 4
@iio_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iio_ring_buffer* @iio_sw_rb_allocate(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_ring_buffer*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.iio_ring_buffer*, align 8
  %5 = alloca %struct.iio_sw_ring_buffer*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.iio_sw_ring_buffer* @kzalloc(i32 24, i32 %6)
  store %struct.iio_sw_ring_buffer* %7, %struct.iio_sw_ring_buffer** %5, align 8
  %8 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %5, align 8
  %9 = icmp ne %struct.iio_sw_ring_buffer* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.iio_ring_buffer* null, %struct.iio_ring_buffer** %2, align 8
  br label %37

11:                                               ; preds = %1
  %12 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %5, align 8
  %13 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %12, i32 0, i32 0
  store %struct.iio_ring_buffer* %13, %struct.iio_ring_buffer** %4, align 8
  %14 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %4, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %16 = call i32 @iio_ring_buffer_init(%struct.iio_ring_buffer* %14, %struct.iio_dev* %15)
  %17 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i32* @iio_sw_ring_type, i32** %19, align 8
  %20 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %20, i32 0, i32 0
  %22 = call i32 @device_initialize(%struct.TYPE_3__* %21)
  %23 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %24 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %23, i32 0, i32 0
  %25 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32* %24, i32** %27, align 8
  %28 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32* @iio_class, i32** %30, align 8
  %31 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %31, i32 0, i32 0
  %33 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %4, align 8
  %34 = bitcast %struct.iio_ring_buffer* %33 to i8*
  %35 = call i32 @dev_set_drvdata(%struct.TYPE_3__* %32, i8* %34)
  %36 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %4, align 8
  store %struct.iio_ring_buffer* %36, %struct.iio_ring_buffer** %2, align 8
  br label %37

37:                                               ; preds = %11, %10
  %38 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %2, align 8
  ret %struct.iio_ring_buffer* %38
}

declare dso_local %struct.iio_sw_ring_buffer* @kzalloc(i32, i32) #1

declare dso_local i32 @iio_ring_buffer_init(%struct.iio_ring_buffer*, %struct.iio_dev*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_3__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
