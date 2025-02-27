; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_ep0_prime_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_ep0_prime_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_udc = type { i32, %struct.fsl_ep*, i32, %struct.fsl_req* }
%struct.fsl_ep = type { i32 }
%struct.fsl_req = type { i32, i64, %struct.TYPE_2__, %struct.fsl_ep* }
%struct.TYPE_2__ = type { i32*, i64, i32, i64 }

@EP_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@WAIT_FOR_OUT_STATUS = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_udc*, i32)* @ep0_prime_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep0_prime_status(%struct.fsl_udc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_udc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_req*, align 8
  %7 = alloca %struct.fsl_ep*, align 8
  store %struct.fsl_udc* %0, %struct.fsl_udc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %9 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %8, i32 0, i32 3
  %10 = load %struct.fsl_req*, %struct.fsl_req** %9, align 8
  store %struct.fsl_req* %10, %struct.fsl_req** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @EP_DIR_IN, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @USB_DIR_IN, align 4
  %16 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %17 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @USB_DIR_OUT, align 4
  %20 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %21 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %24 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %23, i32 0, i32 1
  %25 = load %struct.fsl_ep*, %struct.fsl_ep** %24, align 8
  %26 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %25, i64 0
  store %struct.fsl_ep* %26, %struct.fsl_ep** %7, align 8
  %27 = load i32, i32* @WAIT_FOR_OUT_STATUS, align 4
  %28 = load %struct.fsl_udc*, %struct.fsl_udc** %4, align 8
  %29 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.fsl_ep*, %struct.fsl_ep** %7, align 8
  %31 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %32 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %31, i32 0, i32 3
  store %struct.fsl_ep* %30, %struct.fsl_ep** %32, align 8
  %33 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %34 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @EINPROGRESS, align 4
  %37 = sub nsw i32 0, %36
  %38 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %39 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 8
  %41 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %42 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %45 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  %47 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %48 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %50 = call i64 @fsl_req_to_dtd(%struct.fsl_req* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %22
  %53 = load %struct.fsl_ep*, %struct.fsl_ep** %7, align 8
  %54 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %55 = call i32 @fsl_queue_td(%struct.fsl_ep* %53, %struct.fsl_req* %54)
  br label %59

56:                                               ; preds = %22
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %65

59:                                               ; preds = %52
  %60 = load %struct.fsl_req*, %struct.fsl_req** %6, align 8
  %61 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %60, i32 0, i32 0
  %62 = load %struct.fsl_ep*, %struct.fsl_ep** %7, align 8
  %63 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %62, i32 0, i32 0
  %64 = call i32 @list_add_tail(i32* %61, i32* %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @fsl_req_to_dtd(%struct.fsl_req*) #1

declare dso_local i32 @fsl_queue_td(%struct.fsl_ep*, %struct.fsl_req*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
