; ModuleID = '/home/carl/AnghaBench/linux/net/switchdev/extr_switchdev.c_switchdev_port_attr_set_now.c'
source_filename = "/home/carl/AnghaBench/linux/net/switchdev/extr_switchdev.c_switchdev_port_attr_set_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_attr = type { i32 }
%struct.switchdev_trans = type { i32 }

@SWITCHDEV_PORT_ATTR_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: Commit of attribute (id=%d) failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_attr*)* @switchdev_port_attr_set_now to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchdev_port_attr_set_now(%struct.net_device* %0, %struct.switchdev_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.switchdev_attr*, align 8
  %6 = alloca %struct.switchdev_trans, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.switchdev_attr* %1, %struct.switchdev_attr** %5, align 8
  %8 = getelementptr inbounds %struct.switchdev_trans, %struct.switchdev_trans* %6, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* @SWITCHDEV_PORT_ATTR_SET, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %12 = call i32 @switchdev_port_attr_notify(i32 %9, %struct.net_device* %10, %struct.switchdev_attr* %11, %struct.switchdev_trans* %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %32

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.switchdev_trans, %struct.switchdev_trans* %6, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* @SWITCHDEV_PORT_ATTR_SET, align 4
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %22 = call i32 @switchdev_port_attr_notify(i32 %19, %struct.net_device* %20, %struct.switchdev_attr* %21, %struct.switchdev_trans* %6)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.switchdev_attr*, %struct.switchdev_attr** %5, align 8
  %28 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WARN(i32 %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %17, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @switchdev_port_attr_notify(i32, %struct.net_device*, %struct.switchdev_attr*, %struct.switchdev_trans*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
