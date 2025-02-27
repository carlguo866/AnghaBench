; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ina2xx-adc.c_ina226_set_int_time_vshunt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ina2xx-adc.c_ina226_set_int_time_vshunt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ina2xx_chip_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ina226_conv_time_tab = common dso_local global i32* null, align 8
@INA226_ITS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ina2xx_chip_info*, i32, i32*)* @ina226_set_int_time_vshunt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina226_set_int_time_vshunt(%struct.ina2xx_chip_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ina2xx_chip_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ina2xx_chip_info* %0, %struct.ina2xx_chip_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp ugt i32 %9, 8244
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %12, 140
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %42

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** @ina226_conv_time_tab, align 8
  %20 = load i32*, i32** @ina226_conv_time_tab, align 8
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  %22 = call i32 @find_closest(i32 %18, i32* %19, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** @ina226_conv_time_tab, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %5, align 8
  %29 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @INA226_ITS_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @INA226_SHIFT_ITS(i32 %35)
  %37 = load i32, i32* @INA226_ITS_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %17, %14
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @find_closest(i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @INA226_SHIFT_ITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
