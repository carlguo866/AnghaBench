; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_backing-dev.c_stable_pages_required_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_backing-dev.c_stable_pages_required_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.backing_dev_info = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @stable_pages_required_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stable_pages_required_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.backing_dev_info*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.backing_dev_info* @dev_get_drvdata(%struct.device* %8)
  store %struct.backing_dev_info* %9, %struct.backing_dev_info** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i64, i64* @PAGE_SIZE, align 8
  %12 = sub nsw i64 %11, 1
  %13 = load %struct.backing_dev_info*, %struct.backing_dev_info** %7, align 8
  %14 = call i64 @bdi_cap_stable_pages_required(%struct.backing_dev_info* %13)
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  %18 = call i32 @snprintf(i8* %10, i64 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17)
  ret i32 %18
}

declare dso_local %struct.backing_dev_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

declare dso_local i64 @bdi_cap_stable_pages_required(%struct.backing_dev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
