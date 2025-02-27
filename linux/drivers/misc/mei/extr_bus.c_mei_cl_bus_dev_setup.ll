; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cl_bus_dev_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cl_bus_dev_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_cl_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*, %struct.mei_cl_device*)* @mei_cl_bus_dev_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_cl_bus_dev_setup(%struct.mei_device* %0, %struct.mei_cl_device* %1) #0 {
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca %struct.mei_cl_device*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  store %struct.mei_cl_device* %1, %struct.mei_cl_device** %4, align 8
  %5 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %6 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %8 = call i32 @mei_cl_bus_dev_fixup(%struct.mei_cl_device* %7)
  %9 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %10 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %15 = call i32 @mei_cl_bus_set_name(%struct.mei_cl_device* %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %18 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i32 @mei_cl_bus_dev_fixup(%struct.mei_cl_device*) #1

declare dso_local i32 @mei_cl_bus_set_name(%struct.mei_cl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
