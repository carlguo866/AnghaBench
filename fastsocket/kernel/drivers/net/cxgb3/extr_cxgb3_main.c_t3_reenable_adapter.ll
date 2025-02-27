; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_t3_reenable_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_t3_reenable_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Cannot re-enable PCI device after reset.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @t3_reenable_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3_reenable_adapter(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %4 = load %struct.adapter*, %struct.adapter** %3, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = call i64 @pci_enable_device(%struct.TYPE_5__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call i32 @pci_set_master(%struct.TYPE_5__* %18)
  %20 = load %struct.adapter*, %struct.adapter** %3, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = call i32 @pci_restore_state(%struct.TYPE_5__* %22)
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = call i32 @pci_save_state(%struct.TYPE_5__* %26)
  %28 = load %struct.adapter*, %struct.adapter** %3, align 8
  %29 = call i32 @t3_free_sge_resources(%struct.adapter* %28)
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = call i64 @t3_replay_prep_adapter(%struct.adapter* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  br label %35

34:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %36

35:                                               ; preds = %33, %9
  store i32 -1, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @pci_enable_device(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.TYPE_5__*) #1

declare dso_local i32 @pci_restore_state(%struct.TYPE_5__*) #1

declare dso_local i32 @pci_save_state(%struct.TYPE_5__*) #1

declare dso_local i32 @t3_free_sge_resources(%struct.adapter*) #1

declare dso_local i64 @t3_replay_prep_adapter(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
