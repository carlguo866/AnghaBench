; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_request_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_request_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_request_stats_cmd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"wmi request stats 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32)* @ath10k_wmi_op_gen_request_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_op_gen_request_stats(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi_request_stats_cmd*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %9 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %8, i32 4)
  store %struct.sk_buff* %9, %struct.sk_buff** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.sk_buff* @ERR_PTR(i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %3, align 8
  br label %30

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.wmi_request_stats_cmd*
  store %struct.wmi_request_stats_cmd* %20, %struct.wmi_request_stats_cmd** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @__cpu_to_le32(i32 %21)
  %23 = load %struct.wmi_request_stats_cmd*, %struct.wmi_request_stats_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.wmi_request_stats_cmd, %struct.wmi_request_stats_cmd* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %26 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ath10k_dbg(%struct.ath10k* %25, i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %29, %struct.sk_buff** %3, align 8
  br label %30

30:                                               ; preds = %16, %12
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %31
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
