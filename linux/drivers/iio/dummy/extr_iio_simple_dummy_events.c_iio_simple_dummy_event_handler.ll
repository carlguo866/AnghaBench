; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dummy/extr_iio_simple_dummy_events.c_iio_simple_dummy_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dummy/extr_iio_simple_dummy_events.c_iio_simple_dummy_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_dummy_state = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"id %x event %x\0A\00", align 1
@IIO_VOLTAGE = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_ACTIVITY = common dso_local global i32 0, align 4
@IIO_MOD_RUNNING = common dso_local global i32 0, align 4
@IIO_MOD_WALKING = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@IIO_STEPS = common dso_local global i32 0, align 4
@IIO_NO_MOD = common dso_local global i32 0, align 4
@IIO_EV_DIR_NONE = common dso_local global i32 0, align 4
@IIO_EV_TYPE_CHANGE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @iio_simple_dummy_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_simple_dummy_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_dummy_state*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.iio_dev*
  store %struct.iio_dev* %8, %struct.iio_dev** %5, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %10 = call %struct.iio_dummy_state* @iio_priv(%struct.iio_dev* %9)
  store %struct.iio_dummy_state* %10, %struct.iio_dummy_state** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 0
  %13 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %6, align 8
  %14 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %6, align 8
  %19 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %22)
  %24 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %6, align 8
  %25 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %90 [
    i32 0, label %29
    i32 1, label %39
    i32 2, label %59
    i32 3, label %79
  ]

29:                                               ; preds = %2
  %30 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %31 = load i32, i32* @IIO_VOLTAGE, align 4
  %32 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %33 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %34 = call i32 @IIO_EVENT_CODE(i32 %31, i32 0, i32 0, i32 %32, i32 %33, i32 0, i32 0, i32 0)
  %35 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %6, align 8
  %36 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @iio_push_event(%struct.iio_dev* %30, i32 %34, i32 %37)
  br label %91

39:                                               ; preds = %2
  %40 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %6, align 8
  %41 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %6, align 8
  %44 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %39
  %48 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %49 = load i32, i32* @IIO_ACTIVITY, align 4
  %50 = load i32, i32* @IIO_MOD_RUNNING, align 4
  %51 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %52 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %53 = call i32 @IIO_EVENT_CODE(i32 %49, i32 0, i32 %50, i32 %51, i32 %52, i32 0, i32 0, i32 0)
  %54 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %6, align 8
  %55 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @iio_push_event(%struct.iio_dev* %48, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %47, %39
  br label %91

59:                                               ; preds = %2
  %60 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %6, align 8
  %61 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %6, align 8
  %64 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  %68 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %69 = load i32, i32* @IIO_ACTIVITY, align 4
  %70 = load i32, i32* @IIO_MOD_WALKING, align 4
  %71 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %72 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %73 = call i32 @IIO_EVENT_CODE(i32 %69, i32 0, i32 %70, i32 %71, i32 %72, i32 0, i32 0, i32 0)
  %74 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %6, align 8
  %75 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @iio_push_event(%struct.iio_dev* %68, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %67, %59
  br label %91

79:                                               ; preds = %2
  %80 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %81 = load i32, i32* @IIO_STEPS, align 4
  %82 = load i32, i32* @IIO_NO_MOD, align 4
  %83 = load i32, i32* @IIO_EV_DIR_NONE, align 4
  %84 = load i32, i32* @IIO_EV_TYPE_CHANGE, align 4
  %85 = call i32 @IIO_EVENT_CODE(i32 %81, i32 0, i32 %82, i32 %83, i32 %84, i32 0, i32 0, i32 0)
  %86 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %6, align 8
  %87 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @iio_push_event(%struct.iio_dev* %80, i32 %85, i32 %88)
  br label %91

90:                                               ; preds = %2
  br label %91

91:                                               ; preds = %90, %79, %78, %58, %29
  %92 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %92
}

declare dso_local %struct.iio_dummy_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_EVENT_CODE(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
