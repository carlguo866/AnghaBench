; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_srf04.c_srf04_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_srf04.c_srf04_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.srf04_data = type { i32, i8*, i32, i8*, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @srf04_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srf04_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.srf04_data*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.iio_dev*
  store %struct.iio_dev* %9, %struct.iio_dev** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call %struct.srf04_data* @iio_priv(%struct.iio_dev* %10)
  store %struct.srf04_data* %11, %struct.srf04_data** %6, align 8
  %12 = call i8* (...) @ktime_get()
  store i8* %12, i8** %7, align 8
  %13 = load %struct.srf04_data*, %struct.srf04_data** %6, align 8
  %14 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @gpiod_get_value(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.srf04_data*, %struct.srf04_data** %6, align 8
  %21 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load %struct.srf04_data*, %struct.srf04_data** %6, align 8
  %23 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %22, i32 0, i32 2
  %24 = call i32 @complete(i32* %23)
  br label %32

25:                                               ; preds = %2
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.srf04_data*, %struct.srf04_data** %6, align 8
  %28 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.srf04_data*, %struct.srf04_data** %6, align 8
  %30 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %29, i32 0, i32 0
  %31 = call i32 @complete(i32* %30)
  br label %32

32:                                               ; preds = %25, %18
  %33 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %33
}

declare dso_local %struct.srf04_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i8* @ktime_get(...) #1

declare dso_local i64 @gpiod_get_value(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
