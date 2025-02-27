; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mxs-lradc-adc.c_mxs_lradc_adc_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mxs-lradc-adc.c_mxs_lradc_adc_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_lradc_adc = type { i64 }

@LRADC_DELAY_TRIGGER_DELAYS_OFFSET = common dso_local global i32 0, align 4
@LRADC_DELAY_TIMER_PER = common dso_local global i32 0, align 4
@LRADC_DELAY_DELAY_OFFSET = common dso_local global i32 0, align 4
@LRADC_CTRL2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_lradc_adc*)* @mxs_lradc_adc_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_lradc_adc_hw_init(%struct.mxs_lradc_adc* %0) #0 {
  %2 = alloca %struct.mxs_lradc_adc*, align 8
  %3 = alloca i32, align 4
  store %struct.mxs_lradc_adc* %0, %struct.mxs_lradc_adc** %2, align 8
  %4 = load i32, i32* @LRADC_DELAY_TRIGGER_DELAYS_OFFSET, align 4
  %5 = add nsw i32 %4, 0
  %6 = shl i32 1, %5
  %7 = load i32, i32* @LRADC_DELAY_TIMER_PER, align 4
  %8 = load i32, i32* @LRADC_DELAY_DELAY_OFFSET, align 4
  %9 = shl i32 %7, %8
  %10 = or i32 %6, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %2, align 8
  %13 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @LRADC_DELAY(i32 0)
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %11, i64 %16)
  %18 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %2, align 8
  %19 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LRADC_CTRL2, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 0, i64 %22)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @LRADC_DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
