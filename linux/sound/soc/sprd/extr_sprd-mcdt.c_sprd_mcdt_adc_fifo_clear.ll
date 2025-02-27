; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-mcdt.c_sprd_mcdt_adc_fifo_clear.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-mcdt.c_sprd_mcdt_adc_fifo_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_mcdt_dev = type { i32 }

@MCDT_ADC_FIFO_SHIFT = common dso_local global i64 0, align 8
@MCDT_FIFO_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sprd_mcdt_dev*, i64)* @sprd_mcdt_adc_fifo_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_mcdt_adc_fifo_clear(%struct.sprd_mcdt_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.sprd_mcdt_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.sprd_mcdt_dev* %0, %struct.sprd_mcdt_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* @MCDT_ADC_FIFO_SHIFT, align 8
  %7 = load i64, i64* %4, align 8
  %8 = add nsw i64 %6, %7
  store i64 %8, i64* %5, align 8
  %9 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %3, align 8
  %10 = load i32, i32* @MCDT_FIFO_CLR, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @BIT(i64 %11)
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @BIT(i64 %13)
  %15 = call i32 @sprd_mcdt_update(%struct.sprd_mcdt_dev* %9, i32 %10, i32 %12, i32 %14)
  ret void
}

declare dso_local i32 @sprd_mcdt_update(%struct.sprd_mcdt_dev*, i32, i32, i32) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
