; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_qib_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_qib_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.qib_devdata = type { i32 }

@qib_mini_init = common dso_local global i32 0, align 4
@ib_wq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed counters filesystem cleanup: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @qib_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.qib_devdata* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.qib_devdata* %6, %struct.qib_devdata** %3, align 8
  %7 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %8 = call i32 @qib_unregister_ib_device(%struct.qib_devdata* %7)
  %9 = load i32, i32* @qib_mini_init, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %13 = call i32 @qib_shutdown_device(%struct.qib_devdata* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %16 = call i32 @qib_stop_timers(%struct.qib_devdata* %15)
  %17 = load i32, i32* @ib_wq, align 4
  %18 = call i32 @flush_workqueue(i32 %17)
  %19 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %20 = call i32 @qibfs_remove(%struct.qib_devdata* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i32 @qib_dev_err(%struct.qib_devdata* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23, %14
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %30 = call i32 @qib_device_remove(%struct.qib_devdata* %29)
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %32 = call i32 @qib_postinit_cleanup(%struct.qib_devdata* %31)
  ret void
}

declare dso_local %struct.qib_devdata* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @qib_unregister_ib_device(%struct.qib_devdata*) #1

declare dso_local i32 @qib_shutdown_device(%struct.qib_devdata*) #1

declare dso_local i32 @qib_stop_timers(%struct.qib_devdata*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @qibfs_remove(%struct.qib_devdata*) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i32) #1

declare dso_local i32 @qib_device_remove(%struct.qib_devdata*) #1

declare dso_local i32 @qib_postinit_cleanup(%struct.qib_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
