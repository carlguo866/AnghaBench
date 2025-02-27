; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Core/Src/extr_usbh_ioreq.c_USBH_CtlSendData.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Core/Src/extr_usbh_ioreq.c_USBH_CtlSendData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@USBH_SPEED_HIGH = common dso_local global i64 0, align 8
@USBH_EP_CONTROL = common dso_local global i32 0, align 4
@USBH_PID_DATA = common dso_local global i32 0, align 4
@USBH_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBH_CtlSendData(%struct.TYPE_6__* %0, i64* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @USBH_SPEED_HIGH, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %17, %5
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i32, i32* @USBH_EP_CONTROL, align 4
  %22 = load i32, i32* @USBH_PID_DATA, align 4
  %23 = load i64*, i64** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @USBH_LL_SubmitURB(%struct.TYPE_6__* %19, i64 %20, i32 0, i32 %21, i32 %22, i64* %23, i32 %24, i64 %25)
  %27 = load i32, i32* @USBH_OK, align 4
  ret i32 %27
}

declare dso_local i32 @USBH_LL_SubmitURB(%struct.TYPE_6__*, i64, i32, i32, i32, i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
