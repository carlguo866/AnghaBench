; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_driver_override_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_driver_override_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.spi_device = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @driver_override_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @driver_override_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.spi_device* @to_spi_device(%struct.device* %9)
  store %struct.spi_device* %10, %struct.spi_device** %7, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @device_lock(%struct.device* %11)
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = inttoptr i64 %17 to i8*
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i8* [ %20, %19 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %21 ]
  %24 = call i32 @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @device_unlock(%struct.device* %25)
  %27 = load i32, i32* %8, align 4
  ret i32 %27
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local i32 @device_lock(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
