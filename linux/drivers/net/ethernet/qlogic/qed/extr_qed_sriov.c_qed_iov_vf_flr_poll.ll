; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_flr_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_flr_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_vf_info = type { i32 }
%struct.qed_ptt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_vf_info*, %struct.qed_ptt*)* @qed_iov_vf_flr_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_vf_flr_poll(%struct.qed_hwfn* %0, %struct.qed_vf_info* %1, %struct.qed_ptt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_vf_info*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_vf_info* %1, %struct.qed_vf_info** %6, align 8
  store %struct.qed_ptt* %2, %struct.qed_ptt** %7, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %10 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %11 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %12 = call i32 @qed_iov_vf_flr_poll_dorq(%struct.qed_hwfn* %9, %struct.qed_vf_info* %10, %struct.qed_ptt* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %27

17:                                               ; preds = %3
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %19 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %20 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %21 = call i32 @qed_iov_vf_flr_poll_pbf(%struct.qed_hwfn* %18, %struct.qed_vf_info* %19, %struct.qed_ptt* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %27

26:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %24, %15
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @qed_iov_vf_flr_poll_dorq(%struct.qed_hwfn*, %struct.qed_vf_info*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_iov_vf_flr_poll_pbf(%struct.qed_hwfn*, %struct.qed_vf_info*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
