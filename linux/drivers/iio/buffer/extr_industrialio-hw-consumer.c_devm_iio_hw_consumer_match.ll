; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-hw-consumer.c_devm_iio_hw_consumer_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-hw-consumer.c_devm_iio_hw_consumer_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_hw_consumer = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i8*)* @devm_iio_hw_consumer_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devm_iio_hw_consumer_match(%struct.device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_hw_consumer**, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.iio_hw_consumer**
  store %struct.iio_hw_consumer** %10, %struct.iio_hw_consumer*** %8, align 8
  %11 = load %struct.iio_hw_consumer**, %struct.iio_hw_consumer*** %8, align 8
  %12 = icmp ne %struct.iio_hw_consumer** %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.iio_hw_consumer**, %struct.iio_hw_consumer*** %8, align 8
  %15 = load %struct.iio_hw_consumer*, %struct.iio_hw_consumer** %14, align 8
  %16 = icmp ne %struct.iio_hw_consumer* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %13, %3
  %18 = load %struct.iio_hw_consumer**, %struct.iio_hw_consumer*** %8, align 8
  %19 = icmp ne %struct.iio_hw_consumer** %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.iio_hw_consumer**, %struct.iio_hw_consumer*** %8, align 8
  %22 = load %struct.iio_hw_consumer*, %struct.iio_hw_consumer** %21, align 8
  %23 = icmp ne %struct.iio_hw_consumer* %22, null
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i1 [ true, %17 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  store i32 0, i32* %4, align 4
  br label %36

29:                                               ; preds = %13
  %30 = load %struct.iio_hw_consumer**, %struct.iio_hw_consumer*** %8, align 8
  %31 = load %struct.iio_hw_consumer*, %struct.iio_hw_consumer** %30, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = bitcast i8* %32 to %struct.iio_hw_consumer*
  %34 = icmp eq %struct.iio_hw_consumer* %31, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %29, %25
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
