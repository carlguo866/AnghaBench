; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i64, i32 }
%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CCWGROUP_ONLINE = common dso_local global i64 0, align 8
@QETH_DIAGS_TRAP_DISARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccwgroup_device*)* @qeth_l3_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l3_shutdown(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca %struct.ccwgroup_device*, align 8
  %3 = alloca %struct.qeth_card*, align 8
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %2, align 8
  %4 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %4, i32 0, i32 1
  %6 = call %struct.qeth_card* @dev_get_drvdata(i32* %5)
  store %struct.qeth_card* %6, %struct.qeth_card** %3, align 8
  %7 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %8 = call i32 @qeth_set_allowed_threads(%struct.qeth_card* %7, i32 0, i32 1)
  %9 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %10 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CCWGROUP_ONLINE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %16 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %22 = load i32, i32* @QETH_DIAGS_TRAP_DISARM, align 4
  %23 = call i32 @qeth_hw_trap(%struct.qeth_card* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %14, %1
  %25 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %26 = call i32 @qeth_qdio_clear_card(%struct.qeth_card* %25, i32 0)
  %27 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %28 = call i32 @qeth_clear_qdio_buffers(%struct.qeth_card* %27)
  ret void
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(i32*) #1

declare dso_local i32 @qeth_set_allowed_threads(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @qeth_hw_trap(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_qdio_clear_card(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_clear_qdio_buffers(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
