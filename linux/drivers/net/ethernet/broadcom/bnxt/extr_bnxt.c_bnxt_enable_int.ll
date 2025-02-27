; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_enable_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_enable_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.bnxt_napi**, i32 }
%struct.bnxt_napi = type { %struct.bnxt_cp_ring_info }
%struct.bnxt_cp_ring_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_enable_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_enable_int(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_napi*, align 8
  %5 = alloca %struct.bnxt_cp_ring_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %6 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %7 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %6, i32 0, i32 2
  %8 = call i32 @atomic_set(i32* %7, i32 0)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %32, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %9
  %16 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %17 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %16, i32 0, i32 1
  %18 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.bnxt_napi*, %struct.bnxt_napi** %18, i64 %20
  %22 = load %struct.bnxt_napi*, %struct.bnxt_napi** %21, align 8
  store %struct.bnxt_napi* %22, %struct.bnxt_napi** %4, align 8
  %23 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %24 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %23, i32 0, i32 0
  store %struct.bnxt_cp_ring_info* %24, %struct.bnxt_cp_ring_info** %5, align 8
  %25 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %26 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %27 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %26, i32 0, i32 1
  %28 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %29 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bnxt_db_nq_arm(%struct.bnxt* %25, i32* %27, i32 %30)
  br label %32

32:                                               ; preds = %15
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %9

35:                                               ; preds = %9
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @bnxt_db_nq_arm(%struct.bnxt*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
