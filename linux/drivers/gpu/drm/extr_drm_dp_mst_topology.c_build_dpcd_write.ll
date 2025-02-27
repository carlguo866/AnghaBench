; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_build_dpcd_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_build_dpcd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_sideband_msg_tx = type { i32 }
%struct.drm_dp_sideband_msg_req_body = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8**, i8*, i32, i8* }

@DP_REMOTE_DPCD_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_sideband_msg_tx*, i8*, i32, i8*, i8**)* @build_dpcd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_dpcd_write(%struct.drm_dp_sideband_msg_tx* %0, i8* %1, i32 %2, i8* %3, i8** %4) #0 {
  %6 = alloca %struct.drm_dp_sideband_msg_tx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.drm_dp_sideband_msg_req_body, align 8
  store %struct.drm_dp_sideband_msg_tx* %0, %struct.drm_dp_sideband_msg_tx** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8** %4, i8*** %10, align 8
  %12 = load i32, i32* @DP_REMOTE_DPCD_WRITE, align 4
  %13 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %11, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %11, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store i8* %14, i8** %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %11, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %11, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = load i8**, i8*** %10, align 8
  %27 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %11, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i8** %26, i8*** %29, align 8
  %30 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %6, align 8
  %31 = call i32 @drm_dp_encode_sideband_req(%struct.drm_dp_sideband_msg_req_body* %11, %struct.drm_dp_sideband_msg_tx* %30)
  ret i32 0
}

declare dso_local i32 @drm_dp_encode_sideband_req(%struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_tx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
