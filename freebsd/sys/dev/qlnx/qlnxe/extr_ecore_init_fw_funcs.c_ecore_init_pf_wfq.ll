; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_init_pf_wfq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_init_pf_wfq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@QM_WFQ_MAX_INC_VAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Invalid PF WFQ weight configuration\0A\00", align 1
@QM_REG_WFQPFWEIGHT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_init_pf_wfq(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = call i64 @QM_WFQ_INC_VAL(i32 %11)
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* %10, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @QM_WFQ_MAX_INC_VAL, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %4
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %21 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %20, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %32

22:                                               ; preds = %15
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %24 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %25 = load i64, i64* @QM_REG_WFQPFWEIGHT, align 8
  %26 = load i32, i32* %8, align 4
  %27 = mul nsw i32 %26, 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @ecore_wr(%struct.ecore_hwfn* %23, %struct.ecore_ptt* %24, i64 %29, i64 %30)
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %22, %19
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i64 @QM_WFQ_INC_VAL(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
