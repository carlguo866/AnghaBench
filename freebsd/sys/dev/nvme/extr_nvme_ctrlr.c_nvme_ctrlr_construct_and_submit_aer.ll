; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_construct_and_submit_aer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_construct_and_submit_aer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32 }
%struct.nvme_async_event_request = type { %struct.nvme_request*, %struct.nvme_controller* }
%struct.nvme_request = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@nvme_ctrlr_async_event_cb = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NVME_OPC_ASYNC_EVENT_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_controller*, %struct.nvme_async_event_request*)* @nvme_ctrlr_construct_and_submit_aer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_ctrlr_construct_and_submit_aer(%struct.nvme_controller* %0, %struct.nvme_async_event_request* %1) #0 {
  %3 = alloca %struct.nvme_controller*, align 8
  %4 = alloca %struct.nvme_async_event_request*, align 8
  %5 = alloca %struct.nvme_request*, align 8
  store %struct.nvme_controller* %0, %struct.nvme_controller** %3, align 8
  store %struct.nvme_async_event_request* %1, %struct.nvme_async_event_request** %4, align 8
  %6 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %7 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %4, align 8
  %8 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %7, i32 0, i32 1
  store %struct.nvme_controller* %6, %struct.nvme_controller** %8, align 8
  %9 = load i32, i32* @nvme_ctrlr_async_event_cb, align 4
  %10 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %4, align 8
  %11 = call %struct.nvme_request* @nvme_allocate_request_null(i32 %9, %struct.nvme_async_event_request* %10)
  store %struct.nvme_request* %11, %struct.nvme_request** %5, align 8
  %12 = load %struct.nvme_request*, %struct.nvme_request** %5, align 8
  %13 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %4, align 8
  %14 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %13, i32 0, i32 0
  store %struct.nvme_request* %12, %struct.nvme_request** %14, align 8
  %15 = load i32, i32* @FALSE, align 4
  %16 = load %struct.nvme_request*, %struct.nvme_request** %5, align 8
  %17 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @NVME_OPC_ASYNC_EVENT_REQUEST, align 4
  %19 = load %struct.nvme_request*, %struct.nvme_request** %5, align 8
  %20 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %23 = load %struct.nvme_request*, %struct.nvme_request** %5, align 8
  %24 = call i32 @nvme_ctrlr_submit_admin_request(%struct.nvme_controller* %22, %struct.nvme_request* %23)
  ret void
}

declare dso_local %struct.nvme_request* @nvme_allocate_request_null(i32, %struct.nvme_async_event_request*) #1

declare dso_local i32 @nvme_ctrlr_submit_admin_request(%struct.nvme_controller*, %struct.nvme_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
