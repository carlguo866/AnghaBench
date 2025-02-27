; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_xs.c_xs_wait_for_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_xs.c_xs_wait_for_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xb_req_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xsd_sockmsg = type { i32, i32 }

@xb_write_mutex = common dso_local global i32 0, align 4
@xb_req_state_queued = common dso_local global i64 0, align 8
@xb_req_state_wait_reply = common dso_local global i64 0, align 8
@xb_req_state_aborted = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.xb_req_data*, %struct.xsd_sockmsg*)* @xs_wait_for_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xs_wait_for_reply(%struct.xb_req_data* %0, %struct.xsd_sockmsg* %1) #0 {
  %3 = alloca %struct.xb_req_data*, align 8
  %4 = alloca %struct.xsd_sockmsg*, align 8
  %5 = alloca i8*, align 8
  store %struct.xb_req_data* %0, %struct.xb_req_data** %3, align 8
  store %struct.xsd_sockmsg* %1, %struct.xsd_sockmsg** %4, align 8
  %6 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %7 = call i8* @read_reply(%struct.xb_req_data* %6)
  store i8* %7, i8** %5, align 8
  %8 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %9 = call i32 @xs_request_exit(%struct.xb_req_data* %8)
  %10 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %11 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %4, align 8
  %15 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %17 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %4, align 8
  %21 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = call i32 @mutex_lock(i32* @xb_write_mutex)
  %23 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %24 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @xb_req_state_queued, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %2
  %29 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %30 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @xb_req_state_wait_reply, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28, %2
  %35 = load i64, i64* @xb_req_state_aborted, align 8
  %36 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %37 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %41

38:                                               ; preds = %28
  %39 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %40 = call i32 @kfree(%struct.xb_req_data* %39)
  br label %41

41:                                               ; preds = %38, %34
  %42 = call i32 @mutex_unlock(i32* @xb_write_mutex)
  %43 = load i8*, i8** %5, align 8
  ret i8* %43
}

declare dso_local i8* @read_reply(%struct.xb_req_data*) #1

declare dso_local i32 @xs_request_exit(%struct.xb_req_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(%struct.xb_req_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
