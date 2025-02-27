; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_cxgb4i_ofld_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_cxgb4i_ofld_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { i32, i32, i32, i32, i32, i32, i32 }

@cxgb4i_max_connect = common dso_local global i64 0, align 8
@CXGB4I_MAX_CONN = common dso_local global i64 0, align 8
@cxgb4i_sport_base = common dso_local global i32 0, align 4
@release_offload_resources = common dso_local global i32 0, align 4
@push_tx_frames = common dso_local global i32 0, align 4
@send_abort_req = common dso_local global i32 0, align 4
@send_close_req = common dso_local global i32 0, align 4
@send_rx_credits = common dso_local global i32 0, align 4
@alloc_cpls = common dso_local global i32 0, align 4
@init_act_open = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cdev 0x%p, offload up, added.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4i_ofld_init(%struct.cxgbi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxgbi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %3, align 8
  %5 = load i64, i64* @cxgb4i_max_connect, align 8
  %6 = load i64, i64* @CXGB4I_MAX_CONN, align 8
  %7 = icmp sgt i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i64, i64* @CXGB4I_MAX_CONN, align 8
  store i64 %9, i64* @cxgb4i_max_connect, align 8
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %12 = load i32, i32* @cxgb4i_sport_base, align 4
  %13 = load i64, i64* @cxgb4i_max_connect, align 8
  %14 = call i32 @cxgbi_device_portmap_create(%struct.cxgbi_device* %11, i32 %12, i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %43

19:                                               ; preds = %10
  %20 = load i32, i32* @release_offload_resources, align 4
  %21 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %22 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @push_tx_frames, align 4
  %24 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %25 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @send_abort_req, align 4
  %27 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %28 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @send_close_req, align 4
  %30 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %31 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @send_rx_credits, align 4
  %33 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %34 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @alloc_cpls, align 4
  %36 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %37 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @init_act_open, align 4
  %39 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %40 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_device* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %19, %17
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @cxgbi_device_portmap_create(%struct.cxgbi_device*, i32, i64) #1

declare dso_local i32 @pr_info(i8*, %struct.cxgbi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
