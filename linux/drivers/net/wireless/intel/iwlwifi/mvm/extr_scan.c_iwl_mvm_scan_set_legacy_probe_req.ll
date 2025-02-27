; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_set_legacy_probe_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_set_legacy_probe_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_scan_probe_req_v1 = type { i32, i32, i32*, i32 }
%struct.iwl_scan_probe_req = type { i32, i32, i32*, i32 }

@SCAN_NUM_BAND_PROBE_DATA_V_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_scan_probe_req_v1*, %struct.iwl_scan_probe_req*)* @iwl_mvm_scan_set_legacy_probe_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_scan_set_legacy_probe_req(%struct.iwl_scan_probe_req_v1* %0, %struct.iwl_scan_probe_req* %1) #0 {
  %3 = alloca %struct.iwl_scan_probe_req_v1*, align 8
  %4 = alloca %struct.iwl_scan_probe_req*, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_scan_probe_req_v1* %0, %struct.iwl_scan_probe_req_v1** %3, align 8
  store %struct.iwl_scan_probe_req* %1, %struct.iwl_scan_probe_req** %4, align 8
  %6 = load %struct.iwl_scan_probe_req*, %struct.iwl_scan_probe_req** %4, align 8
  %7 = getelementptr inbounds %struct.iwl_scan_probe_req, %struct.iwl_scan_probe_req* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.iwl_scan_probe_req_v1*, %struct.iwl_scan_probe_req_v1** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_scan_probe_req_v1, %struct.iwl_scan_probe_req_v1* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %29, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SCAN_NUM_BAND_PROBE_DATA_V_1, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load %struct.iwl_scan_probe_req*, %struct.iwl_scan_probe_req** %4, align 8
  %17 = getelementptr inbounds %struct.iwl_scan_probe_req, %struct.iwl_scan_probe_req* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.iwl_scan_probe_req_v1*, %struct.iwl_scan_probe_req_v1** %3, align 8
  %24 = getelementptr inbounds %struct.iwl_scan_probe_req_v1, %struct.iwl_scan_probe_req_v1* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %22, i32* %28, align 4
  br label %29

29:                                               ; preds = %15
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %11

32:                                               ; preds = %11
  %33 = load %struct.iwl_scan_probe_req*, %struct.iwl_scan_probe_req** %4, align 8
  %34 = getelementptr inbounds %struct.iwl_scan_probe_req, %struct.iwl_scan_probe_req* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.iwl_scan_probe_req_v1*, %struct.iwl_scan_probe_req_v1** %3, align 8
  %37 = getelementptr inbounds %struct.iwl_scan_probe_req_v1, %struct.iwl_scan_probe_req_v1* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.iwl_scan_probe_req_v1*, %struct.iwl_scan_probe_req_v1** %3, align 8
  %39 = getelementptr inbounds %struct.iwl_scan_probe_req_v1, %struct.iwl_scan_probe_req_v1* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.iwl_scan_probe_req*, %struct.iwl_scan_probe_req** %4, align 8
  %42 = getelementptr inbounds %struct.iwl_scan_probe_req, %struct.iwl_scan_probe_req* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @memcpy(i32 %40, i32 %43, i32 4)
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
