; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_mask_parities.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_mask_parities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@DRV_MSG_CODE_MASK_PARITIES = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"MCP response failure for mask parities, aborting\0A\00", align 1
@FW_MSG_CODE_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"MCP did not acknowledge mask parity request. Old MFW?\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_mask_parities(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %11 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %12 = load i32, i32* @DRV_MSG_CODE_MASK_PARITIES, align 4
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @ecore_mcp_cmd(%struct.ecore_hwfn* %10, %struct.ecore_ptt* %11, i32 %12, i64 %13, i64* %7, i64* %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @ECORE_SUCCESS, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %20 = call i32 @DP_ERR(%struct.ecore_hwfn* %19, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %30

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @FW_MSG_CODE_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %27 = call i32 @DP_ERR(%struct.ecore_hwfn* %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %25, %21
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i32, i32* %9, align 4
  ret i32 %31
}

declare dso_local i32 @ecore_mcp_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i64, i64*, i64*) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
