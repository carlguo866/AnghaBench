; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-ntrig.c_show_min_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-ntrig.c_show_min_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hid_device = type { i32 }
%struct.ntrig_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_min_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_min_width(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca %struct.ntrig_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.hid_device* @to_hid_device(%struct.device* %9)
  store %struct.hid_device* %10, %struct.hid_device** %7, align 8
  %11 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %12 = call %struct.ntrig_data* @hid_get_drvdata(%struct.hid_device* %11)
  store %struct.ntrig_data* %12, %struct.ntrig_data** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.ntrig_data*, %struct.ntrig_data** %8, align 8
  %15 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ntrig_data*, %struct.ntrig_data** %8, align 8
  %18 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %16, %19
  %21 = load %struct.ntrig_data*, %struct.ntrig_data** %8, align 8
  %22 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %20, %23
  %25 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24)
  ret i32 %25
}

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local %struct.ntrig_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
