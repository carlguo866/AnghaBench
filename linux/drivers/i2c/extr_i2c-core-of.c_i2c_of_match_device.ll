; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-of.c_i2c_of_match_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-of.c_i2c_of_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device_id = type { i32 }
%struct.i2c_client = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.of_device_id* @i2c_of_match_device(%struct.of_device_id* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca %struct.of_device_id*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  store %struct.of_device_id* %0, %struct.of_device_id** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %8 = icmp ne %struct.i2c_client* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %11 = icmp ne %struct.of_device_id* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  store %struct.of_device_id* null, %struct.of_device_id** %3, align 8
  br label %26

13:                                               ; preds = %9
  %14 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = call %struct.of_device_id* @of_match_device(%struct.of_device_id* %14, i32* %16)
  store %struct.of_device_id* %17, %struct.of_device_id** %6, align 8
  %18 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %19 = icmp ne %struct.of_device_id* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  store %struct.of_device_id* %21, %struct.of_device_id** %3, align 8
  br label %26

22:                                               ; preds = %13
  %23 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %25 = call %struct.of_device_id* @i2c_of_match_device_sysfs(%struct.of_device_id* %23, %struct.i2c_client* %24)
  store %struct.of_device_id* %25, %struct.of_device_id** %3, align 8
  br label %26

26:                                               ; preds = %22, %20, %12
  %27 = load %struct.of_device_id*, %struct.of_device_id** %3, align 8
  ret %struct.of_device_id* %27
}

declare dso_local %struct.of_device_id* @of_match_device(%struct.of_device_id*, i32*) #1

declare dso_local %struct.of_device_id* @i2c_of_match_device_sysfs(%struct.of_device_id*, %struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
