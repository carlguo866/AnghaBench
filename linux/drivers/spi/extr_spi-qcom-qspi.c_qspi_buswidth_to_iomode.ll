; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qcom-qspi.c_qspi_buswidth_to_iomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qcom-qspi.c_qspi_buswidth_to_iomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_qspi = type { i32 }

@SDR_1BIT = common dso_local global i32 0, align 4
@MULTI_IO_MODE_SHFT = common dso_local global i32 0, align 4
@SDR_2BIT = common dso_local global i32 0, align 4
@SDR_4BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unexpected bus width: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_qspi*, i32)* @qspi_buswidth_to_iomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qspi_buswidth_to_iomode(%struct.qcom_qspi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcom_qspi*, align 8
  %5 = alloca i32, align 4
  store %struct.qcom_qspi* %0, %struct.qcom_qspi** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %19 [
    i32 1, label %7
    i32 2, label %11
    i32 4, label %15
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @SDR_1BIT, align 4
  %9 = load i32, i32* @MULTI_IO_MODE_SHFT, align 4
  %10 = shl i32 %8, %9
  store i32 %10, i32* %3, align 4
  br label %28

11:                                               ; preds = %2
  %12 = load i32, i32* @SDR_2BIT, align 4
  %13 = load i32, i32* @MULTI_IO_MODE_SHFT, align 4
  %14 = shl i32 %12, %13
  store i32 %14, i32* %3, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load i32, i32* @SDR_4BIT, align 4
  %17 = load i32, i32* @MULTI_IO_MODE_SHFT, align 4
  %18 = shl i32 %16, %17
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.qcom_qspi*, %struct.qcom_qspi** %4, align 8
  %21 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dev_warn_once(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @SDR_1BIT, align 4
  %26 = load i32, i32* @MULTI_IO_MODE_SHFT, align 4
  %27 = shl i32 %25, %26
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %19, %15, %11, %7
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @dev_warn_once(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
