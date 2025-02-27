; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"ai canceled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ai_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ai_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  store i32 0, i32* %3, align 4
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %23 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = call i32 @disable_ai_pacing(%struct.comedi_device* %29)
  %31 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %32 = call i32 @abort_dma(%struct.comedi_device* %31, i32 1)
  %33 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %21, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @disable_ai_pacing(%struct.comedi_device*) #1

declare dso_local i32 @abort_dma(%struct.comedi_device*, i32) #1

declare dso_local i32 @DEBUG_PRINT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
