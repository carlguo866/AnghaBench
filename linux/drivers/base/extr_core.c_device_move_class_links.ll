; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_move_class_links.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_move_class_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, %struct.device*)* @device_move_class_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_move_class_links(%struct.device* %0, %struct.device* %1, %struct.device* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.device* %2, %struct.device** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = call i32 @sysfs_remove_link(i32* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %10, %3
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = icmp ne %struct.device* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = call i32 @sysfs_create_link(i32* %19, i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %17, %14
  %24 = load i32, i32* %7, align 4
  ret i32 %24
}

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
