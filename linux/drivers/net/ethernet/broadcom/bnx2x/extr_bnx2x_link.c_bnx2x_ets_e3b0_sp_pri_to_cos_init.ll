; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_ets_e3b0_sp_pri_to_cos_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_ets_e3b0_sp_pri_to_cos_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCBX_MAX_NUM_COS = common dso_local global i64 0, align 8
@DCBX_INVALID_COS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*)* @bnx2x_ets_e3b0_sp_pri_to_cos_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_ets_e3b0_sp_pri_to_cos_init(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %13, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @DCBX_MAX_NUM_COS, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load i64, i64* @DCBX_INVALID_COS, align 8
  %10 = load i64*, i64** %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  store i64 %9, i64* %12, align 8
  br label %13

13:                                               ; preds = %8
  %14 = load i64, i64* %3, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* %3, align 8
  br label %4

16:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
