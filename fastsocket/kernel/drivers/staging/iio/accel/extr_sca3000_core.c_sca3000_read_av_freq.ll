; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_read_av_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_read_av_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { %struct.sca3000_state* }
%struct.sca3000_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SCA3000_REG_ADDR_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @sca3000_read_av_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_read_av_freq(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.sca3000_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %13)
  store %struct.iio_dev* %14, %struct.iio_dev** %8, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %16 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %15, i32 0, i32 0
  %17 = load %struct.sca3000_state*, %struct.sca3000_state** %16, align 8
  store %struct.sca3000_state* %17, %struct.sca3000_state** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %19 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %22 = load i32, i32* @SCA3000_REG_ADDR_MODE, align 4
  %23 = call i32 @sca3000_read_data(%struct.sca3000_state* %21, i32 %22, i32** %12, i32 1)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %25 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %24, i32 0, i32 1
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %117

30:                                               ; preds = %3
  %31 = load i32*, i32** %12, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 3
  store i32 %34, i32* %32, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %113 [
    i32 130, label %38
    i32 129, label %63
    i32 128, label %88
  ]

38:                                               ; preds = %30
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %44 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %49 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %52, 2
  %54 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %55 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, 4
  %60 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %53, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %10, align 4
  br label %113

63:                                               ; preds = %30
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %69 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %74 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %77, 2
  %79 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %80 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %83, 4
  %85 = call i32 @sprintf(i8* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %78, i32 %84)
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %10, align 4
  br label %113

88:                                               ; preds = %30
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %94 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %99 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = sdiv i32 %102, 2
  %104 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %105 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = sdiv i32 %108, 4
  %110 = call i32 @sprintf(i8* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %103, i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %30, %88, %63, %38
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @kfree(i32* %114)
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %4, align 4
  br label %119

117:                                              ; preds = %29
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %117, %113
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sca3000_read_data(%struct.sca3000_state*, i32, i32**, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
