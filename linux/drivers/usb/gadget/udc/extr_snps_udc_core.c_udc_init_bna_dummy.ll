; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_init_bna_dummy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_init_bna_dummy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc_request = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@UDC_DMA_IN_STS_L = common dso_local global i32 0, align 4
@UDC_DMA_STP_STS_BS_DMA_DONE = common dso_local global i32 0, align 4
@UDC_DMA_STP_STS_BS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udc_request*)* @udc_init_bna_dummy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_init_bna_dummy(%struct.udc_request* %0) #0 {
  %2 = alloca %struct.udc_request*, align 8
  store %struct.udc_request* %0, %struct.udc_request** %2, align 8
  %3 = load %struct.udc_request*, %struct.udc_request** %2, align 8
  %4 = icmp ne %struct.udc_request* %3, null
  br i1 %4, label %5, label %33

5:                                                ; preds = %1
  %6 = load i32, i32* @UDC_DMA_IN_STS_L, align 4
  %7 = call i32 @AMD_BIT(i32 %6)
  %8 = load %struct.udc_request*, %struct.udc_request** %2, align 8
  %9 = getelementptr inbounds %struct.udc_request, %struct.udc_request* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %7
  store i32 %13, i32* %11, align 4
  %14 = load %struct.udc_request*, %struct.udc_request** %2, align 8
  %15 = getelementptr inbounds %struct.udc_request, %struct.udc_request* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.udc_request*, %struct.udc_request** %2, align 8
  %18 = getelementptr inbounds %struct.udc_request, %struct.udc_request* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %16, i32* %20, align 4
  %21 = load %struct.udc_request*, %struct.udc_request** %2, align 8
  %22 = getelementptr inbounds %struct.udc_request, %struct.udc_request* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @UDC_DMA_STP_STS_BS_DMA_DONE, align 4
  %27 = load i32, i32* @UDC_DMA_STP_STS_BS, align 4
  %28 = call i32 @AMD_ADDBITS(i32 %25, i32 %26, i32 %27)
  %29 = load %struct.udc_request*, %struct.udc_request** %2, align 8
  %30 = getelementptr inbounds %struct.udc_request, %struct.udc_request* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  br label %33

33:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @AMD_BIT(i32) #1

declare dso_local i32 @AMD_ADDBITS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
