; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcaspi = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@TASK_RUNNING = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qcaspi_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcaspi_intr_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qcaspi*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.qcaspi*
  store %struct.qcaspi* %7, %struct.qcaspi** %5, align 8
  %8 = load %struct.qcaspi*, %struct.qcaspi** %5, align 8
  %9 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  %12 = load %struct.qcaspi*, %struct.qcaspi** %5, align 8
  %13 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.qcaspi*, %struct.qcaspi** %5, align 8
  %18 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TASK_RUNNING, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.qcaspi*, %struct.qcaspi** %5, align 8
  %26 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @wake_up_process(%struct.TYPE_2__* %27)
  br label %29

29:                                               ; preds = %24, %16, %2
  %30 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %30
}

declare dso_local i32 @wake_up_process(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
