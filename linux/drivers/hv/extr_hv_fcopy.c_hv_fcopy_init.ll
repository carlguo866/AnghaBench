; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_fcopy.c_hv_fcopy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_fcopy.c_hv_fcopy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.hv_util_service = type { i32, i32 }

@recv_buffer = common dso_local global i32 0, align 4
@fcopy_transaction = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@HVUTIL_DEVICE_INIT = common dso_local global i32 0, align 4
@fcopy_devname = common dso_local global i32 0, align 4
@fcopy_on_msg = common dso_local global i32 0, align 4
@fcopy_on_reset = common dso_local global i32 0, align 4
@hvt = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hv_fcopy_init(%struct.hv_util_service* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_util_service*, align 8
  store %struct.hv_util_service* %0, %struct.hv_util_service** %3, align 8
  %4 = load %struct.hv_util_service*, %struct.hv_util_service** %3, align 8
  %5 = getelementptr inbounds %struct.hv_util_service, %struct.hv_util_service* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* @recv_buffer, align 4
  %7 = load %struct.hv_util_service*, %struct.hv_util_service** %3, align 8
  %8 = getelementptr inbounds %struct.hv_util_service, %struct.hv_util_service* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fcopy_transaction, i32 0, i32 1), align 4
  %10 = load i32, i32* @HVUTIL_DEVICE_INIT, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fcopy_transaction, i32 0, i32 0), align 4
  %11 = load i32, i32* @fcopy_devname, align 4
  %12 = load i32, i32* @fcopy_on_msg, align 4
  %13 = load i32, i32* @fcopy_on_reset, align 4
  %14 = call i32 @hvutil_transport_init(i32 %11, i32 0, i32 0, i32 %12, i32 %13)
  store i32 %14, i32* @hvt, align 4
  %15 = load i32, i32* @hvt, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EFAULT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @hvutil_transport_init(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
