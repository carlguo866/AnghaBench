; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_p2p.c___ath10k_p2p_noa_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_p2p.c___ath10k_p2p_noa_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.wmi_p2p_noa_info = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_vif*, %struct.wmi_p2p_noa_info*)* @__ath10k_p2p_noa_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ath10k_p2p_noa_update(%struct.ath10k_vif* %0, %struct.wmi_p2p_noa_info* %1) #0 {
  %3 = alloca %struct.ath10k_vif*, align 8
  %4 = alloca %struct.wmi_p2p_noa_info*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %3, align 8
  store %struct.wmi_p2p_noa_info* %1, %struct.wmi_p2p_noa_info** %4, align 8
  %8 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %9 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %8, i32 0, i32 0
  %10 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  store %struct.ath10k* %10, %struct.ath10k** %5, align 8
  %11 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 0
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %15 = call i32 @ath10k_p2p_noa_ie_assign(%struct.ath10k_vif* %14, i8* null, i64 0)
  %16 = load %struct.wmi_p2p_noa_info*, %struct.wmi_p2p_noa_info** %4, align 8
  %17 = call i64 @ath10k_p2p_noa_ie_len_compute(%struct.wmi_p2p_noa_info* %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %37

21:                                               ; preds = %2
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call i8* @kmalloc(i64 %22, i32 %23)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %37

28:                                               ; preds = %21
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.wmi_p2p_noa_info*, %struct.wmi_p2p_noa_info** %4, align 8
  %32 = call i32 @ath10k_p2p_noa_ie_fill(i8* %29, i64 %30, %struct.wmi_p2p_noa_info* %31)
  %33 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @ath10k_p2p_noa_ie_assign(%struct.ath10k_vif* %33, i8* %34, i64 %35)
  br label %37

37:                                               ; preds = %28, %27, %20
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_p2p_noa_ie_assign(%struct.ath10k_vif*, i8*, i64) #1

declare dso_local i64 @ath10k_p2p_noa_ie_len_compute(%struct.wmi_p2p_noa_info*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @ath10k_p2p_noa_ie_fill(i8*, i64, %struct.wmi_p2p_noa_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
