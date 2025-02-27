; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_vnic_ctx_free_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_vnic_ctx_free_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.hwrm_vnic_rss_cos_lb_ctx_free_input = type { i32, i32 }

@HWRM_VNIC_RSS_COS_LB_CTX_FREE = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@INVALID_HW_RING_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, i64, i64)* @bnxt_hwrm_vnic_ctx_free_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_hwrm_vnic_ctx_free_one(%struct.bnxt* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hwrm_vnic_rss_cos_lb_ctx_free_input, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = bitcast %struct.hwrm_vnic_rss_cos_lb_ctx_free_input* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %10 = load i32, i32* @HWRM_VNIC_RSS_COS_LB_CTX_FREE, align 4
  %11 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %9, %struct.hwrm_vnic_rss_cos_lb_ctx_free_input* %7, i32 %10, i32 -1, i32 -1)
  %12 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %13 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cpu_to_le16(i32 %21)
  %23 = getelementptr inbounds %struct.hwrm_vnic_rss_cos_lb_ctx_free_input, %struct.hwrm_vnic_rss_cos_lb_ctx_free_input* %7, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %25 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %26 = call i32 @hwrm_send_message(%struct.bnxt* %24, %struct.hwrm_vnic_rss_cos_lb_ctx_free_input* %7, i32 8, i32 %25)
  %27 = load i32, i32* @INVALID_HW_RING_ID, align 4
  %28 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %29 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %27, i32* %36, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_vnic_rss_cos_lb_ctx_free_input*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_vnic_rss_cos_lb_ctx_free_input*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
