; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_imx7d_adc.c_imx7d_adc_get_sample_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_imx7d_adc.c_imx7d_adc_get_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx7d_adc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IMX7D_ADC_INPUT_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx7d_adc*)* @imx7d_adc_get_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7d_adc_get_sample_rate(%struct.imx7d_adc* %0) #0 {
  %2 = alloca %struct.imx7d_adc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.imx7d_adc* %0, %struct.imx7d_adc** %2, align 8
  %6 = load %struct.imx7d_adc*, %struct.imx7d_adc** %2, align 8
  %7 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @IMX7D_ADC_INPUT_CLK, align 4
  %11 = load %struct.imx7d_adc*, %struct.imx7d_adc** %2, align 8
  %12 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sdiv i32 %10, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  %17 = mul nsw i32 %16, 6
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sdiv i32 %18, %19
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
