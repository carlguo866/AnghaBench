; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_get_temp_samp_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_get_temp_samp_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dps310_data = type { i32 }

@DPS310_TMP_CFG = common dso_local global i32 0, align 4
@DPS310_TMP_RATE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dps310_data*)* @dps310_get_temp_samp_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dps310_get_temp_samp_freq(%struct.dps310_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dps310_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dps310_data* %0, %struct.dps310_data** %3, align 8
  %6 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %7 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @DPS310_TMP_CFG, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %21

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @DPS310_TMP_RATE_BITS, align 4
  %18 = and i32 %16, %17
  %19 = ashr i32 %18, 4
  %20 = call i32 @BIT(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %15, %13
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
