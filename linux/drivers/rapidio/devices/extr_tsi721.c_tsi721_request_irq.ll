; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@tsi721_irqhandler = common dso_local global i32 0, align 4
@TSI721_USING_MSI = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to allocate interrupt, err=%d\00", align 1
@TSI721_USING_MSIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsi721_device*)* @tsi721_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_request_irq(%struct.tsi721_device* %0) #0 {
  %2 = alloca %struct.tsi721_device*, align 8
  %3 = alloca i32, align 4
  store %struct.tsi721_device* %0, %struct.tsi721_device** %2, align 8
  %4 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %5 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @tsi721_irqhandler, align 4
  %10 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %11 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @TSI721_USING_MSI, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @IRQF_SHARED, align 4
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i32 [ 0, %16 ], [ %18, %17 ]
  %21 = load i32, i32* @DRV_NAME, align 4
  %22 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %23 = bitcast %struct.tsi721_device* %22 to i8*
  %24 = call i32 @request_irq(i32 %8, i32 %9, i32 %20, i32 %21, i8* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.tsi721_device*, %struct.tsi721_device** %2, align 8
  %29 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @tsi_err(i32* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %27, %19
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @request_irq(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @tsi_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
