; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_scan_finalize_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_scan_finalize_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tb_switch = type { i32, i64 }

@KOBJ_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @tb_scan_finalize_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_scan_finalize_switch(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tb_switch*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call i64 @tb_is_switch(%struct.device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.tb_switch* @tb_to_switch(%struct.device* %10)
  store %struct.tb_switch* %11, %struct.tb_switch** %5, align 8
  %12 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %13 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %18 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %19

19:                                               ; preds = %16, %9
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @dev_set_uevent_suppress(%struct.device* %20, i32 0)
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load i32, i32* @KOBJ_ADD, align 4
  %25 = call i32 @kobject_uevent(i32* %23, i32 %24)
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = call i32 @device_for_each_child(%struct.device* %26, i32* null, i32 (%struct.device*, i8*)* @tb_scan_finalize_switch)
  br label %28

28:                                               ; preds = %19, %2
  ret i32 0
}

declare dso_local i64 @tb_is_switch(%struct.device*) #1

declare dso_local %struct.tb_switch* @tb_to_switch(%struct.device*) #1

declare dso_local i32 @dev_set_uevent_suppress(%struct.device*, i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @device_for_each_child(%struct.device*, i32*, i32 (%struct.device*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
