; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_phy.c_scic_sds_phy_starting_substate_await_sig_fis_event_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_phy.c_scic_sds_phy_starting_substate_await_sig_fis_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_SATA_SPEED_EN = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_PHY = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_RECEIVED_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"PHY starting substate machine received unexpected event_code %x\0A\00", align 1
@SCI_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @scic_sds_phy_starting_substate_await_sig_fis_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scic_sds_phy_starting_substate_await_sig_fis_event_handler(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @scu_get_event_code(i32 %7)
  switch i32 %8, label %17 [
    i32 128, label %9
    i32 129, label %14
  ]

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @scic_sds_phy_get_starting_substate_machine(i32* %10)
  %12 = load i32, i32* @SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_SATA_SPEED_EN, align 4
  %13 = call i32 @sci_base_state_machine_change_state(i32 %11, i32 %12)
  br label %26

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @scic_sds_phy_restart_starting_state(i32* %15)
  br label %26

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @sci_base_object_get_logger(i32* %18)
  %20 = load i32, i32* @SCIC_LOG_OBJECT_PHY, align 4
  %21 = load i32, i32* @SCIC_LOG_OBJECT_RECEIVED_EVENTS, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @SCIC_LOG_WARNING(i32 %23)
  %25 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %17, %14, %9
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @scu_get_event_code(i32) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32, i32) #1

declare dso_local i32 @scic_sds_phy_get_starting_substate_machine(i32*) #1

declare dso_local i32 @scic_sds_phy_restart_starting_state(i32*) #1

declare dso_local i32 @SCIC_LOG_WARNING(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
