; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwl_bg_statistics_periodic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwl_bg_statistics_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }

@STATUS_EXIT_PENDING = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @iwl_bg_statistics_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_bg_statistics_periodic(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.iwl_priv*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.iwl_priv*
  store %struct.iwl_priv* %5, %struct.iwl_priv** %3, align 8
  %6 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %7 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %7, i32 0, i32 0
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %21

12:                                               ; preds = %1
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %14 = call i32 @iwl_is_ready_rf(%struct.iwl_priv* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %21

17:                                               ; preds = %12
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %19 = load i32, i32* @CMD_ASYNC, align 4
  %20 = call i32 @iwl_send_statistics_request(%struct.iwl_priv* %18, i32 %19, i32 0)
  br label %21

21:                                               ; preds = %17, %16, %11
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_is_ready_rf(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_send_statistics_request(%struct.iwl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
