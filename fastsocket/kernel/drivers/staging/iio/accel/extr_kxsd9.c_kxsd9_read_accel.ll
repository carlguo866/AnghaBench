; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_kxsd9.c_kxsd9_read_accel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_kxsd9.c_kxsd9_read_accel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.spi_message = type { i32 }
%struct.iio_dev_attr = type { i32 }
%struct.iio_dev = type { %struct.kxsd9_state* }
%struct.kxsd9_state = type { i32*, i32, i32, i32* }
%struct.spi_transfer = type { i32, i32, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @kxsd9_read_accel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxsd9_read_accel(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.spi_message, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iio_dev_attr*, align 8
  %12 = alloca %struct.iio_dev*, align 8
  %13 = alloca %struct.kxsd9_state*, align 8
  %14 = alloca [2 x %struct.spi_transfer], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %16 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %15)
  store %struct.iio_dev_attr* %16, %struct.iio_dev_attr** %11, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %17)
  store %struct.iio_dev* %18, %struct.iio_dev** %12, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  %20 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %19, i32 0, i32 0
  %21 = load %struct.kxsd9_state*, %struct.kxsd9_state** %20, align 8
  store %struct.kxsd9_state* %21, %struct.kxsd9_state** %13, align 8
  %22 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 0
  store i32 8, i32* %23, align 16
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 3
  store i32 200, i32* %26, align 4
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 4
  store i32* null, i32** %27, align 16
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 5
  %29 = load %struct.kxsd9_state*, %struct.kxsd9_state** %13, align 8
  %30 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %28, align 8
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i64 1
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 0
  store i32 8, i32* %33, align 16
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 1
  store i32 2, i32* %34, align 4
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 2
  store i32 1, i32* %35, align 8
  %36 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 3
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 4
  %38 = load %struct.kxsd9_state*, %struct.kxsd9_state** %13, align 8
  %39 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %37, align 16
  %41 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 5
  store i32* null, i32** %41, align 8
  %42 = load %struct.kxsd9_state*, %struct.kxsd9_state** %13, align 8
  %43 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %42, i32 0, i32 1
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %11, align 8
  %46 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @KXSD9_READ(i32 %47)
  %49 = load %struct.kxsd9_state*, %struct.kxsd9_state** %13, align 8
  %50 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %48, i32* %52, align 4
  %53 = call i32 @spi_message_init(%struct.spi_message* %7)
  %54 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %55 = call i32 @spi_message_add_tail(%struct.spi_transfer* %54, %struct.spi_message* %7)
  %56 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %57 = call i32 @spi_message_add_tail(%struct.spi_transfer* %56, %struct.spi_message* %7)
  %58 = load %struct.kxsd9_state*, %struct.kxsd9_state** %13, align 8
  %59 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @spi_sync(i32 %60, %struct.spi_message* %7)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %3
  br label %82

65:                                               ; preds = %3
  %66 = load %struct.kxsd9_state*, %struct.kxsd9_state** %13, align 8
  %67 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 8
  %72 = load %struct.kxsd9_state*, %struct.kxsd9_state** %13, align 8
  %73 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 240
  %78 = or i32 %71, %77
  store i32 %78, i32* %10, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @sprintf(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %80)
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %65, %64
  %83 = load %struct.kxsd9_state*, %struct.kxsd9_state** %13, align 8
  %84 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %83, i32 0, i32 1
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %8, align 4
  br label %92

90:                                               ; preds = %82
  %91 = load i32, i32* %9, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  ret i32 %93
}

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @KXSD9_READ(i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
