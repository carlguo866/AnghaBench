; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_start_ooo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_start_ooo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qed_ll2_params = type { i32 }
%struct.qed_ll2_acquire_data = type { i32 }

@QED_LL2_TYPE_OOO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to acquire LL2 OOO connection\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to establish LL2 OOO connection\0A\00", align 1
@QED_LL2_UNUSED_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ll2_params*)* @qed_ll2_start_ooo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ll2_start_ooo(%struct.qed_hwfn* %0, %struct.qed_ll2_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ll2_params*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qed_ll2_acquire_data, align 4
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ll2_params* %1, %struct.qed_ll2_params** %5, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32* %12, i32** %6, align 8
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %14 = load %struct.qed_ll2_params*, %struct.qed_ll2_params** %5, align 8
  %15 = load i32, i32* @QED_LL2_TYPE_OOO, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @qed_ll2_set_conn_data(%struct.qed_hwfn* %13, %struct.qed_ll2_acquire_data* %7, %struct.qed_ll2_params* %14, i32 %15, i32* %16, i32 1)
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %19 = call i32 @qed_ll2_acquire_connection(%struct.qed_hwfn* %18, %struct.qed_ll2_acquire_data* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %24 = call i32 @DP_INFO(%struct.qed_hwfn* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %41

25:                                               ; preds = %2
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @qed_ll2_establish_connection(%struct.qed_hwfn* %26, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %34 = call i32 @DP_INFO(%struct.qed_hwfn* %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %36

35:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %45

36:                                               ; preds = %32
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @qed_ll2_release_connection(%struct.qed_hwfn* %37, i32 %39)
  br label %41

41:                                               ; preds = %36, %22
  %42 = load i32, i32* @QED_LL2_UNUSED_HANDLE, align 4
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @qed_ll2_set_conn_data(%struct.qed_hwfn*, %struct.qed_ll2_acquire_data*, %struct.qed_ll2_params*, i32, i32*, i32) #1

declare dso_local i32 @qed_ll2_acquire_connection(%struct.qed_hwfn*, %struct.qed_ll2_acquire_data*) #1

declare dso_local i32 @DP_INFO(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_ll2_establish_connection(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_ll2_release_connection(%struct.qed_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
