; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-card.c_fw_schedule_bus_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-card.c_fw_schedule_bus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32, i32 }

@fw_workqueue = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_schedule_bus_reset(%struct.fw_card* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fw_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %9 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %11 = call i32 @fw_card_get(%struct.fw_card* %10)
  %12 = load i32, i32* @fw_workqueue, align 4
  %13 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %14 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %13, i32 0, i32 1
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @HZ, align 4
  %19 = call i32 @DIV_ROUND_UP(i32 %18, i32 100)
  br label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi i32 [ %19, %17 ], [ 0, %20 ]
  %23 = call i32 @queue_delayed_work(i32 %12, i32* %14, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %27 = call i32 @fw_card_put(%struct.fw_card* %26)
  br label %28

28:                                               ; preds = %25, %21
  ret void
}

declare dso_local i32 @fw_card_get(%struct.fw_card*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @fw_card_put(%struct.fw_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
