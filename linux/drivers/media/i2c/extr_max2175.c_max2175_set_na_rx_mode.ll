; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_set_na_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_set_na_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max2175 = type { i32, i32 }

@MAX2175_CH_MSEL = common dso_local global i32 0, align 4
@ch_coeff_fmna = common dso_local global i32 0, align 4
@MAX2175_EQ_MSEL = common dso_local global i32 0, align 4
@eq_coeff_fmna1_ra02_m6db = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max2175*, i32)* @max2175_set_na_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max2175_set_na_rx_mode(%struct.max2175* %0, i32 %1) #0 {
  %3 = alloca %struct.max2175*, align 8
  %4 = alloca i32, align 4
  store %struct.max2175* %0, %struct.max2175** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %12 [
    i32 129, label %6
    i32 128, label %9
  ]

6:                                                ; preds = %2
  %7 = load %struct.max2175*, %struct.max2175** %3, align 8
  %8 = call i32 @max2175_load_fmna_1p0(%struct.max2175* %7)
  br label %12

9:                                                ; preds = %2
  %10 = load %struct.max2175*, %struct.max2175** %3, align 8
  %11 = call i32 @max2175_load_fmna_2p0(%struct.max2175* %10)
  br label %12

12:                                               ; preds = %2, %9, %6
  %13 = load %struct.max2175*, %struct.max2175** %3, align 8
  %14 = getelementptr inbounds %struct.max2175, %struct.max2175* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load %struct.max2175*, %struct.max2175** %3, align 8
  %19 = call i32 @max2175_write_bit(%struct.max2175* %18, i32 30, i32 7, i32 1)
  br label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.max2175*, %struct.max2175** %3, align 8
  %22 = getelementptr inbounds %struct.max2175, %struct.max2175* %21, i32 0, i32 0
  store i32 27, i32* %22, align 4
  %23 = load %struct.max2175*, %struct.max2175** %3, align 8
  %24 = load i32, i32* @MAX2175_CH_MSEL, align 4
  %25 = load i32, i32* @ch_coeff_fmna, align 4
  %26 = call i32 @max2175_set_filter_coeffs(%struct.max2175* %23, i32 %24, i32 0, i32 %25)
  %27 = load %struct.max2175*, %struct.max2175** %3, align 8
  %28 = load i32, i32* @MAX2175_EQ_MSEL, align 4
  %29 = load i32, i32* @eq_coeff_fmna1_ra02_m6db, align 4
  %30 = call i32 @max2175_set_filter_coeffs(%struct.max2175* %27, i32 %28, i32 0, i32 %29)
  ret void
}

declare dso_local i32 @max2175_load_fmna_1p0(%struct.max2175*) #1

declare dso_local i32 @max2175_load_fmna_2p0(%struct.max2175*) #1

declare dso_local i32 @max2175_write_bit(%struct.max2175*, i32, i32, i32) #1

declare dso_local i32 @max2175_set_filter_coeffs(%struct.max2175*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
