; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mv-usb.c_mv_otg_run_state_machine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mv-usb.c_mv_otg_run_state_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_otg = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"transceiver is updated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_otg*, i64)* @mv_otg_run_state_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_otg_run_state_machine(%struct.mv_otg* %0, i64 %1) #0 {
  %3 = alloca %struct.mv_otg*, align 8
  %4 = alloca i64, align 8
  store %struct.mv_otg* %0, %struct.mv_otg** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.mv_otg*, %struct.mv_otg** %3, align 8
  %6 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.mv_otg*, %struct.mv_otg** %3, align 8
  %11 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.mv_otg*, %struct.mv_otg** %3, align 8
  %17 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mv_otg*, %struct.mv_otg** %3, align 8
  %20 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %19, i32 0, i32 0
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @queue_delayed_work(i32 %18, i32* %20, i64 %21)
  br label %23

23:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
