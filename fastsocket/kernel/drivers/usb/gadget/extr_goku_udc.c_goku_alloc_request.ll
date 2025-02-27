; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_goku_udc.c_goku_alloc_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_goku_udc.c_goku_alloc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_request = type { i32 }
%struct.usb_ep = type { i32 }
%struct.goku_request = type { %struct.usb_request, i32 }

@DMA_ADDR_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_request* (%struct.usb_ep*, i32)* @goku_alloc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_request* @goku_alloc_request(%struct.usb_ep* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_request*, align 8
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.goku_request*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %8 = icmp ne %struct.usb_ep* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.usb_request* null, %struct.usb_request** %3, align 8
  br label %26

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.goku_request* @kzalloc(i32 8, i32 %11)
  store %struct.goku_request* %12, %struct.goku_request** %6, align 8
  %13 = load %struct.goku_request*, %struct.goku_request** %6, align 8
  %14 = icmp ne %struct.goku_request* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store %struct.usb_request* null, %struct.usb_request** %3, align 8
  br label %26

16:                                               ; preds = %10
  %17 = load i32, i32* @DMA_ADDR_INVALID, align 4
  %18 = load %struct.goku_request*, %struct.goku_request** %6, align 8
  %19 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.goku_request*, %struct.goku_request** %6, align 8
  %22 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %21, i32 0, i32 1
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.goku_request*, %struct.goku_request** %6, align 8
  %25 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %24, i32 0, i32 0
  store %struct.usb_request* %25, %struct.usb_request** %3, align 8
  br label %26

26:                                               ; preds = %16, %15, %9
  %27 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  ret %struct.usb_request* %27
}

declare dso_local %struct.goku_request* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
