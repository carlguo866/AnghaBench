; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_ring_sw.c___iio_init_sw_ring_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_ring_sw.c___iio_init_sw_ring_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_sw_ring_buffer = type { i64, i64, i64, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_sw_ring_buffer*, i32, i32)* @__iio_init_sw_ring_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iio_init_sw_ring_buffer(%struct.iio_sw_ring_buffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_sw_ring_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iio_sw_ring_buffer* %0, %struct.iio_sw_ring_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %56

16:                                               ; preds = %10
  %17 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %5, align 8
  %18 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %17, i32 0, i32 5
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @__iio_init_ring_buffer(%struct.TYPE_2__* %18, i32 %19, i32 %20)
  %22 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %5, align 8
  %23 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__SPIN_LOCK_UNLOCKED(i32 %24)
  %26 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %5, align 8
  %27 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %28, %32
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i64 @kmalloc(i32 %33, i32 %34)
  %36 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %5, align 8
  %37 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %5, align 8
  %39 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %5, align 8
  %43 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %5, align 8
  %45 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.iio_sw_ring_buffer*, %struct.iio_sw_ring_buffer** %5, align 8
  %47 = getelementptr inbounds %struct.iio_sw_ring_buffer, %struct.iio_sw_ring_buffer* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %16
  br label %54

51:                                               ; preds = %16
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  br label %54

54:                                               ; preds = %51, %50
  %55 = phi i32 [ 0, %50 ], [ %53, %51 ]
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %13
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @__iio_init_ring_buffer(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @__SPIN_LOCK_UNLOCKED(i32) #1

declare dso_local i64 @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
