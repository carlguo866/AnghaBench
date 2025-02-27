; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m41t94.c_m41t94_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m41t94.c_m41t94_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.spi_device = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@M41T94_REG_SECONDS = common dso_local global i32 0, align 4
@M41T94_REG_MINUTES = common dso_local global i64 0, align 8
@M41T94_REG_HOURS = common dso_local global i64 0, align 8
@M41T94_REG_WDAY = common dso_local global i64 0, align 8
@M41T94_REG_DAY = common dso_local global i64 0, align 8
@M41T94_REG_MONTH = common dso_local global i64 0, align 8
@M41T94_BIT_CEB = common dso_local global i32 0, align 4
@M41T94_BIT_CB = common dso_local global i32 0, align 4
@M41T94_REG_YEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @m41t94_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m41t94_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca [8 x i32], align 16
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.spi_device* @to_spi_device(%struct.device* %7)
  store %struct.spi_device* %8, %struct.spi_device** %5, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %11 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %14 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %17 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_dbg(%struct.device* %9, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30)
  %32 = load i32, i32* @M41T94_REG_SECONDS, align 4
  %33 = or i32 128, %32
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  store i32 %33, i32* %34, align 16
  %35 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bin2bcd(i32 %37)
  %39 = load i32, i32* @M41T94_REG_SECONDS, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %40
  store i32 %38, i32* %41, align 4
  %42 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bin2bcd(i32 %44)
  %46 = load i64, i64* @M41T94_REG_MINUTES, align 8
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %46
  store i32 %45, i32* %47, align 4
  %48 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bin2bcd(i32 %50)
  %52 = load i64, i64* @M41T94_REG_HOURS, align 8
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %52
  store i32 %51, i32* %53, align 4
  %54 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  %58 = call i32 @bin2bcd(i32 %57)
  %59 = load i64, i64* @M41T94_REG_WDAY, align 8
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %59
  store i32 %58, i32* %60, align 4
  %61 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %62 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @bin2bcd(i32 %63)
  %65 = load i64, i64* @M41T94_REG_DAY, align 8
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %65
  store i32 %64, i32* %66, align 4
  %67 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32 @bin2bcd(i32 %70)
  %72 = load i64, i64* @M41T94_REG_MONTH, align 8
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %72
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @M41T94_BIT_CEB, align 4
  %75 = load i64, i64* @M41T94_REG_HOURS, align 8
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = icmp sge i32 %81, 100
  br i1 %82, label %83, label %89

83:                                               ; preds = %2
  %84 = load i32, i32* @M41T94_BIT_CB, align 4
  %85 = load i64, i64* @M41T94_REG_HOURS, align 8
  %86 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %2
  %90 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %91 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = srem i32 %92, 100
  %94 = call i32 @bin2bcd(i32 %93)
  %95 = load i64, i64* @M41T94_REG_YEAR, align 8
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %95
  store i32 %94, i32* %96, align 4
  %97 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %99 = call i32 @spi_write(%struct.spi_device* %97, i32* %98, i32 8)
  ret i32 %99
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @spi_write(%struct.spi_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
