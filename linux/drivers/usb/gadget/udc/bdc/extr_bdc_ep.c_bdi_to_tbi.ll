; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_ep.c_bdi_to_tbi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_ep.c_bdi_to_tbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdc_ep = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"bdi:%d num_bds_table:%d tbi:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdc_ep*, i32)* @bdi_to_tbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdi_to_tbi(%struct.bdc_ep* %0, i32 %1) #0 {
  %3 = alloca %struct.bdc_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bdc_ep* %0, %struct.bdc_ep** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.bdc_ep*, %struct.bdc_ep** %3, align 8
  %8 = getelementptr inbounds %struct.bdc_ep, %struct.bdc_ep* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sdiv i32 %6, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.bdc_ep*, %struct.bdc_ep** %3, align 8
  %13 = getelementptr inbounds %struct.bdc_ep, %struct.bdc_ep* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.bdc_ep*, %struct.bdc_ep** %3, align 8
  %19 = getelementptr inbounds %struct.bdc_ep, %struct.bdc_ep* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dev_vdbg(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
