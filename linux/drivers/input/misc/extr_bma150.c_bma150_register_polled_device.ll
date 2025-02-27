; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_bma150.c_bma150_register_polled_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_bma150.c_bma150_register_polled_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bma150_data = type { i32, %struct.input_polled_dev* }
%struct.input_polled_dev = type { i32, i32, i32, i32, i32, i32, i32, %struct.bma150_data* }

@ENOMEM = common dso_local global i32 0, align 4
@bma150_poll_open = common dso_local global i32 0, align 4
@bma150_poll_close = common dso_local global i32 0, align 4
@bma150_poll = common dso_local global i32 0, align 4
@BMA150_POLL_INTERVAL = common dso_local global i32 0, align 4
@BMA150_POLL_MIN = common dso_local global i32 0, align 4
@BMA150_POLL_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bma150_data*)* @bma150_register_polled_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bma150_register_polled_device(%struct.bma150_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bma150_data*, align 8
  %4 = alloca %struct.input_polled_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.bma150_data* %0, %struct.bma150_data** %3, align 8
  %6 = call %struct.input_polled_dev* (...) @input_allocate_polled_device()
  store %struct.input_polled_dev* %6, %struct.input_polled_dev** %4, align 8
  %7 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %8 = icmp ne %struct.input_polled_dev* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %56

12:                                               ; preds = %1
  %13 = load %struct.bma150_data*, %struct.bma150_data** %3, align 8
  %14 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %15 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %14, i32 0, i32 7
  store %struct.bma150_data* %13, %struct.bma150_data** %15, align 8
  %16 = load i32, i32* @bma150_poll_open, align 4
  %17 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %18 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @bma150_poll_close, align 4
  %20 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %21 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @bma150_poll, align 4
  %23 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %24 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @BMA150_POLL_INTERVAL, align 4
  %26 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %27 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @BMA150_POLL_MIN, align 4
  %29 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %30 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @BMA150_POLL_MAX, align 4
  %32 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %33 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.bma150_data*, %struct.bma150_data** %3, align 8
  %35 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %36 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @bma150_init_input_device(%struct.bma150_data* %34, i32 %37)
  %39 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %40 = load %struct.bma150_data*, %struct.bma150_data** %3, align 8
  %41 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %40, i32 0, i32 1
  store %struct.input_polled_dev* %39, %struct.input_polled_dev** %41, align 8
  %42 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %43 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.bma150_data*, %struct.bma150_data** %3, align 8
  %46 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %48 = call i32 @input_register_polled_device(%struct.input_polled_dev* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %12
  %52 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %53 = call i32 @input_free_polled_device(%struct.input_polled_dev* %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %51, %9
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.input_polled_dev* @input_allocate_polled_device(...) #1

declare dso_local i32 @bma150_init_input_device(%struct.bma150_data*, i32) #1

declare dso_local i32 @input_register_polled_device(%struct.input_polled_dev*) #1

declare dso_local i32 @input_free_polled_device(%struct.input_polled_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
