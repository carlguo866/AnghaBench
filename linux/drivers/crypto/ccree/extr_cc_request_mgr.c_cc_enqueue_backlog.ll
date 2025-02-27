; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_request_mgr.c_cc_enqueue_backlog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_request_mgr.c_cc_enqueue_backlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { %struct.cc_req_mgr_handle* }
%struct.cc_req_mgr_handle = type { i32, i32, i32, i32 }
%struct.cc_bl_item = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"+++bl len: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc_drvdata*, %struct.cc_bl_item*)* @cc_enqueue_backlog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_enqueue_backlog(%struct.cc_drvdata* %0, %struct.cc_bl_item* %1) #0 {
  %3 = alloca %struct.cc_drvdata*, align 8
  %4 = alloca %struct.cc_bl_item*, align 8
  %5 = alloca %struct.cc_req_mgr_handle*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %3, align 8
  store %struct.cc_bl_item* %1, %struct.cc_bl_item** %4, align 8
  %7 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %8 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %7, i32 0, i32 0
  %9 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %8, align 8
  store %struct.cc_req_mgr_handle* %9, %struct.cc_req_mgr_handle** %5, align 8
  %10 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %11 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %10)
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %5, align 8
  %13 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.cc_bl_item*, %struct.cc_bl_item** %4, align 8
  %16 = getelementptr inbounds %struct.cc_bl_item, %struct.cc_bl_item* %15, i32 0, i32 0
  %17 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %5, align 8
  %18 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %17, i32 0, i32 3
  %19 = call i32 @list_add_tail(i32* %16, i32* %18)
  %20 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %5, align 8
  %21 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %5, align 8
  %26 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_dbg(%struct.device* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %5, align 8
  %30 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock_bh(i32* %30)
  %32 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %5, align 8
  %33 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %32, i32 0, i32 0
  %34 = call i32 @tasklet_schedule(i32* %33)
  ret void
}

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
