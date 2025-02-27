; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_platform.c_ipmi_remove_platform_device_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_platform.c_ipmi_remove_platform_device_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }

@platform_bus_type = common dso_local global i32 0, align 4
@pdev_match_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipmi_remove_platform_device_by_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  store i8* %0, i8** %2, align 8
  br label %5

5:                                                ; preds = %10, %1
  %6 = load i8*, i8** %2, align 8
  %7 = load i32, i32* @pdev_match_name, align 4
  %8 = call %struct.device* @bus_find_device(i32* @platform_bus_type, i32* null, i8* %6, i32 %7)
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.platform_device* @to_platform_device(%struct.device* %11)
  store %struct.platform_device* %12, %struct.platform_device** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %14 = call i32 @platform_device_unregister(%struct.platform_device* %13)
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 @put_device(%struct.device* %15)
  br label %5

17:                                               ; preds = %5
  ret void
}

declare dso_local %struct.device* @bus_find_device(i32*, i32*, i8*, i32) #1

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
