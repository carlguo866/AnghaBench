; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_ap_set_dtim_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_ap_set_dtim_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.set_dtim_cmd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_AP_SET_DTIM_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_ap_set_dtim_cmd(%struct.wmi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wmi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.set_dtim_cmd*, align 8
  store %struct.wmi* %0, %struct.wmi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 4)
  store %struct.sk_buff* %10, %struct.sk_buff** %8, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %31

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.set_dtim_cmd*
  store %struct.set_dtim_cmd* %20, %struct.set_dtim_cmd** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @cpu_to_le32(i32 %21)
  %23 = load %struct.set_dtim_cmd*, %struct.set_dtim_cmd** %9, align 8
  %24 = getelementptr inbounds %struct.set_dtim_cmd, %struct.set_dtim_cmd* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.wmi*, %struct.wmi** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = load i32, i32* @WMI_AP_SET_DTIM_CMDID, align 4
  %29 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %30 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %25, i32 %26, %struct.sk_buff* %27, i32 %28, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %16, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
