; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_available_size_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_available_size_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nd_region = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @available_size_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @available_size_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nd_region*, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.nd_region* @to_nd_region(%struct.device* %9)
  store %struct.nd_region* %10, %struct.nd_region** %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @nd_device_lock(%struct.device* %11)
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 @nvdimm_bus_lock(%struct.device* %13)
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @wait_nvdimm_bus_probe_idle(%struct.device* %15)
  %17 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %18 = call i64 @nd_region_available_dpa(%struct.nd_region* %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @nvdimm_bus_unlock(%struct.device* %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @nd_device_unlock(%struct.device* %21)
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %24)
  ret i32 %25
}

declare dso_local %struct.nd_region* @to_nd_region(%struct.device*) #1

declare dso_local i32 @nd_device_lock(%struct.device*) #1

declare dso_local i32 @nvdimm_bus_lock(%struct.device*) #1

declare dso_local i32 @wait_nvdimm_bus_probe_idle(%struct.device*) #1

declare dso_local i64 @nd_region_available_dpa(%struct.nd_region*) #1

declare dso_local i32 @nvdimm_bus_unlock(%struct.device*) #1

declare dso_local i32 @nd_device_unlock(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
