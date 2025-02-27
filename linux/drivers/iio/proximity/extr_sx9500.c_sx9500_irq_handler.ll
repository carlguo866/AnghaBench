; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.sx9500_data = type { i32, i64 }

@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sx9500_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx9500_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.sx9500_data*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.iio_dev*
  store %struct.iio_dev* %8, %struct.iio_dev** %5, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %10 = call %struct.sx9500_data* @iio_priv(%struct.iio_dev* %9)
  store %struct.sx9500_data* %10, %struct.sx9500_data** %6, align 8
  %11 = load %struct.sx9500_data*, %struct.sx9500_data** %6, align 8
  %12 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.sx9500_data*, %struct.sx9500_data** %6, align 8
  %17 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @iio_trigger_poll(i32 %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  ret i32 %21
}

declare dso_local %struct.sx9500_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_poll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
