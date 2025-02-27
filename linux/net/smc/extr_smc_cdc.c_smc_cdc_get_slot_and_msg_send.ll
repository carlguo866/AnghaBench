; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.c_smc_cdc_get_slot_and_msg_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.c_smc_cdc_get_slot_and_msg_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_connection = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_cdc_get_slot_and_msg_send(%struct.smc_connection* %0) #0 {
  %2 = alloca %struct.smc_connection*, align 8
  %3 = alloca i32, align 4
  store %struct.smc_connection* %0, %struct.smc_connection** %2, align 8
  %4 = load %struct.smc_connection*, %struct.smc_connection** %2, align 8
  %5 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.smc_connection*, %struct.smc_connection** %2, align 8
  %12 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.smc_connection*, %struct.smc_connection** %2, align 8
  %15 = call i32 @smcd_cdc_msg_send(%struct.smc_connection* %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.smc_connection*, %struct.smc_connection** %2, align 8
  %17 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock_bh(i32* %17)
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.smc_connection*, %struct.smc_connection** %2, align 8
  %21 = call i32 @smcr_cdc_get_slot_and_msg_send(%struct.smc_connection* %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %19, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @smcd_cdc_msg_send(%struct.smc_connection*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @smcr_cdc_get_slot_and_msg_send(%struct.smc_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
