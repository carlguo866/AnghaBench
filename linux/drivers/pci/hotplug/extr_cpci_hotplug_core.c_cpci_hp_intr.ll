; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpci_hotplug_core.c_cpci_hp_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpci_hotplug_core.c_cpci_hp_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (...)*, i32 (i32)* }

@.str = private unnamed_addr constant [21 x i8] c"entered cpci_hp_intr\00", align 1
@controller = common dso_local global %struct.TYPE_4__* null, align 8
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"exited cpci_hp_intr, not our interrupt\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@cpci_thread = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cpci_hp_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpci_hp_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = call i32 @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @controller, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IRQF_SHARED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @controller, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @controller, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 %18(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %13
  %25 = call i32 @dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %37

27:                                               ; preds = %13, %2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @controller, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (...)*, i32 (...)** %31, align 8
  %33 = call i32 (...) %32()
  %34 = load i32, i32* @cpci_thread, align 4
  %35 = call i32 @wake_up_process(i32 %34)
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %27, %24
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
