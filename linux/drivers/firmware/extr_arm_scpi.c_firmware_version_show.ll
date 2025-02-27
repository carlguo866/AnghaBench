; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_scpi.c_firmware_version_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_scpi.c_firmware_version_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scpi_drvinfo = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%lu.%lu.%lu\0A\00", align 1
@FW_REV_MAJOR_MASK = common dso_local global i32 0, align 4
@FW_REV_MINOR_MASK = common dso_local global i32 0, align 4
@FW_REV_PATCH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @firmware_version_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firmware_version_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.scpi_drvinfo*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.scpi_drvinfo* @dev_get_drvdata(%struct.device* %8)
  store %struct.scpi_drvinfo* %9, %struct.scpi_drvinfo** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* @FW_REV_MAJOR_MASK, align 4
  %12 = load %struct.scpi_drvinfo*, %struct.scpi_drvinfo** %7, align 8
  %13 = getelementptr inbounds %struct.scpi_drvinfo, %struct.scpi_drvinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @FIELD_GET(i32 %11, i32 %14)
  %16 = load i32, i32* @FW_REV_MINOR_MASK, align 4
  %17 = load %struct.scpi_drvinfo*, %struct.scpi_drvinfo** %7, align 8
  %18 = getelementptr inbounds %struct.scpi_drvinfo, %struct.scpi_drvinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @FIELD_GET(i32 %16, i32 %19)
  %21 = load i32, i32* @FW_REV_PATCH_MASK, align 4
  %22 = load %struct.scpi_drvinfo*, %struct.scpi_drvinfo** %7, align 8
  %23 = getelementptr inbounds %struct.scpi_drvinfo, %struct.scpi_drvinfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @FIELD_GET(i32 %21, i32 %24)
  %26 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %20, i32 %25)
  ret i32 %26
}

declare dso_local %struct.scpi_drvinfo* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
