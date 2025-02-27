; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/dce110/extr_hw_factory_dce110.c_define_ddc_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/dce110/extr_hw_factory_dce110.c_define_ddc_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.hw_gpio_pin = type { i32 }
%struct.hw_ddc = type { i32*, i32*, %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32* }

@ddc_data_regs = common dso_local global %struct.TYPE_5__* null, align 8
@ddc_clk_regs = common dso_local global %struct.TYPE_5__* null, align 8
@ddc_shift = common dso_local global i32 0, align 4
@ddc_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hw_gpio_pin*, i64)* @define_ddc_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @define_ddc_registers(%struct.hw_gpio_pin* %0, i64 %1) #0 {
  %3 = alloca %struct.hw_gpio_pin*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hw_ddc*, align 8
  store %struct.hw_gpio_pin* %0, %struct.hw_gpio_pin** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %3, align 8
  %7 = call %struct.hw_ddc* @HW_DDC_FROM_BASE(%struct.hw_gpio_pin* %6)
  store %struct.hw_ddc* %7, %struct.hw_ddc** %5, align 8
  %8 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %3, align 8
  %9 = getelementptr inbounds %struct.hw_gpio_pin, %struct.hw_gpio_pin* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %37 [
    i32 128, label %11
    i32 129, label %24
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ddc_data_regs, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %13
  %15 = load %struct.hw_ddc*, %struct.hw_ddc** %5, align 8
  %16 = getelementptr inbounds %struct.hw_ddc, %struct.hw_ddc* %15, i32 0, i32 3
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ddc_data_regs, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.hw_ddc*, %struct.hw_ddc** %5, align 8
  %22 = getelementptr inbounds %struct.hw_ddc, %struct.hw_ddc* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32* %20, i32** %23, align 8
  br label %39

24:                                               ; preds = %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ddc_clk_regs, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %26
  %28 = load %struct.hw_ddc*, %struct.hw_ddc** %5, align 8
  %29 = getelementptr inbounds %struct.hw_ddc, %struct.hw_ddc* %28, i32 0, i32 3
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ddc_clk_regs, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.hw_ddc*, %struct.hw_ddc** %5, align 8
  %35 = getelementptr inbounds %struct.hw_ddc, %struct.hw_ddc* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32* %33, i32** %36, align 8
  br label %39

37:                                               ; preds = %2
  %38 = call i32 @ASSERT_CRITICAL(i32 0)
  br label %44

39:                                               ; preds = %24, %11
  %40 = load %struct.hw_ddc*, %struct.hw_ddc** %5, align 8
  %41 = getelementptr inbounds %struct.hw_ddc, %struct.hw_ddc* %40, i32 0, i32 1
  store i32* @ddc_shift, i32** %41, align 8
  %42 = load %struct.hw_ddc*, %struct.hw_ddc** %5, align 8
  %43 = getelementptr inbounds %struct.hw_ddc, %struct.hw_ddc* %42, i32 0, i32 0
  store i32* @ddc_mask, i32** %43, align 8
  br label %44

44:                                               ; preds = %39, %37
  ret void
}

declare dso_local %struct.hw_ddc* @HW_DDC_FROM_BASE(%struct.hw_gpio_pin*) #1

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
