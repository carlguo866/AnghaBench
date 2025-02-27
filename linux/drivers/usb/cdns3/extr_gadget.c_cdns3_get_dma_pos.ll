; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_get_dma_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_get_dma_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cdns3_endpoint = type { i32 }

@TRB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns3_device*, %struct.cdns3_endpoint*)* @cdns3_get_dma_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_get_dma_pos(%struct.cdns3_device* %0, %struct.cdns3_endpoint* %1) #0 {
  %3 = alloca %struct.cdns3_device*, align 8
  %4 = alloca %struct.cdns3_endpoint*, align 8
  %5 = alloca i32, align 4
  store %struct.cdns3_device* %0, %struct.cdns3_device** %3, align 8
  store %struct.cdns3_endpoint* %1, %struct.cdns3_endpoint** %4, align 8
  %6 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %7 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @readl(i32* %9)
  %11 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %12 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @TRB_SIZE, align 4
  %17 = sdiv i32 %15, %16
  ret i32 %17
}

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
