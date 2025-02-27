; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_calc_ack_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_calc_ack_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32 }

@DOT11_ACK_LEN = common dso_local global i64 0, align 8
@FCS_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_c_info*, i32, i32)* @brcms_c_calc_ack_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_calc_ack_time(%struct.brcms_c_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @brcms_basic_rate(%struct.brcms_c_info* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i64, i64* @DOT11_ACK_LEN, align 8
  %15 = load i64, i64* @FCS_LEN, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @brcms_c_calc_frame_time(%struct.brcms_c_info* %11, i32 %12, i32 %13, i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  ret i32 %18
}

declare dso_local i32 @brcms_basic_rate(%struct.brcms_c_info*, i32) #1

declare dso_local i32 @brcms_c_calc_frame_time(%struct.brcms_c_info*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
