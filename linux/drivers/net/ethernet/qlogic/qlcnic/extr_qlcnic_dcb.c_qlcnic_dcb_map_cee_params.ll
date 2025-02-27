; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_map_cee_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_map_cee_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qlcnic_dcb_cfg*, %struct.qlcnic_dcb_mbx_params* }
%struct.qlcnic_dcb_cfg = type { %struct.TYPE_4__, %struct.qlcnic_dcb_cee* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.qlcnic_dcb_cee = type { i32, i32, i32, i32 }
%struct.qlcnic_dcb_mbx_params = type { %struct.qlcnic_dcb_param* }
%struct.qlcnic_dcb_param = type { i32* }

@QLC_DCB_MAX_TC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, i64)* @qlcnic_dcb_map_cee_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_dcb_map_cee_params(%struct.qlcnic_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qlcnic_dcb_mbx_params*, align 8
  %6 = alloca %struct.qlcnic_dcb_param*, align 8
  %7 = alloca %struct.qlcnic_dcb_cfg*, align 8
  %8 = alloca %struct.qlcnic_dcb_cee*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load %struct.qlcnic_dcb_mbx_params*, %struct.qlcnic_dcb_mbx_params** %12, align 8
  store %struct.qlcnic_dcb_mbx_params* %13, %struct.qlcnic_dcb_mbx_params** %5, align 8
  %14 = load %struct.qlcnic_dcb_mbx_params*, %struct.qlcnic_dcb_mbx_params** %5, align 8
  %15 = getelementptr inbounds %struct.qlcnic_dcb_mbx_params, %struct.qlcnic_dcb_mbx_params* %14, i32 0, i32 0
  %16 = load %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_param** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %16, i64 %17
  store %struct.qlcnic_dcb_param* %18, %struct.qlcnic_dcb_param** %6, align 8
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.qlcnic_dcb_cfg*, %struct.qlcnic_dcb_cfg** %22, align 8
  store %struct.qlcnic_dcb_cfg* %23, %struct.qlcnic_dcb_cfg** %7, align 8
  %24 = load %struct.qlcnic_dcb_cfg*, %struct.qlcnic_dcb_cfg** %7, align 8
  %25 = getelementptr inbounds %struct.qlcnic_dcb_cfg, %struct.qlcnic_dcb_cfg* %24, i32 0, i32 1
  %26 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %26, i64 %27
  store %struct.qlcnic_dcb_cee* %28, %struct.qlcnic_dcb_cee** %8, align 8
  %29 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %8, align 8
  %30 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %8, align 8
  %32 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %8, align 8
  %34 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @QLC_DCB_MAX_TC, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memset(i32 %35, i32 0, i32 %39)
  %41 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %8, align 8
  %42 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @QLC_DCB_MAX_TC, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memset(i32 %43, i32 0, i32 %47)
  %49 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %50 = load %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_param** %6, align 8
  %51 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @qlcnic_dcb_pfc_hdr_valid(%struct.qlcnic_adapter* %49, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %2
  %58 = load %struct.qlcnic_dcb_cfg*, %struct.qlcnic_dcb_cfg** %7, align 8
  %59 = getelementptr inbounds %struct.qlcnic_dcb_cfg, %struct.qlcnic_dcb_cfg* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %8, align 8
  %65 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %57, %2
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %68 = load %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_param** %6, align 8
  %69 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @qlcnic_dcb_tsa_hdr_valid(%struct.qlcnic_adapter* %67, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %66
  %76 = load %struct.qlcnic_dcb_cfg*, %struct.qlcnic_dcb_cfg** %7, align 8
  %77 = getelementptr inbounds %struct.qlcnic_dcb_cfg, %struct.qlcnic_dcb_cfg* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %8, align 8
  %83 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %82, i32 0, i32 0
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %75, %66
  %85 = load %struct.qlcnic_dcb_mbx_params*, %struct.qlcnic_dcb_mbx_params** %5, align 8
  %86 = load %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_param** %6, align 8
  %87 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %8, align 8
  %88 = call i32 @qlcnic_dcb_fill_cee_tc_params(%struct.qlcnic_dcb_mbx_params* %85, %struct.qlcnic_dcb_param* %86, %struct.qlcnic_dcb_cee* %87)
  %89 = load %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_param** %6, align 8
  %90 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %8, align 8
  %91 = call i32 @qlcnic_dcb_fill_cee_pg_params(%struct.qlcnic_dcb_param* %89, %struct.qlcnic_dcb_cee* %90)
  %92 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %93 = load i64, i64* %4, align 8
  %94 = load %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_param** %6, align 8
  %95 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %8, align 8
  %96 = call i32 @qlcnic_dcb_fill_cee_app_params(%struct.qlcnic_adapter* %92, i64 %93, %struct.qlcnic_dcb_param* %94, %struct.qlcnic_dcb_cee* %95)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @qlcnic_dcb_pfc_hdr_valid(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @qlcnic_dcb_tsa_hdr_valid(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_dcb_fill_cee_tc_params(%struct.qlcnic_dcb_mbx_params*, %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_cee*) #1

declare dso_local i32 @qlcnic_dcb_fill_cee_pg_params(%struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_cee*) #1

declare dso_local i32 @qlcnic_dcb_fill_cee_app_params(%struct.qlcnic_adapter*, i64, %struct.qlcnic_dcb_param*, %struct.qlcnic_dcb_cee*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
