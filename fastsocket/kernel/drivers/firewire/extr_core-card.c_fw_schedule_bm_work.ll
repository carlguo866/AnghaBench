; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-card.c_fw_schedule_bm_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-card.c_fw_schedule_bm_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_schedule_bm_work(%struct.fw_card* %0, i64 %1) #0 {
  %3 = alloca %struct.fw_card*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %7 = call i32 @fw_card_get(%struct.fw_card* %6)
  %8 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %9 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @schedule_delayed_work(i32* %9, i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %16 = call i32 @fw_card_put(%struct.fw_card* %15)
  br label %17

17:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @fw_card_get(%struct.fw_card*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

declare dso_local i32 @fw_card_put(%struct.fw_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
