; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_w90p910_keypad.c_w90p910_keypad_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_w90p910_keypad.c_w90p910_keypad_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.w90p910_keypad = type { i64, i32, %struct.w90p910_keypad_platform_data* }
%struct.w90p910_keypad_platform_data = type { i32, i32 }

@KPI_CONF = common dso_local global i64 0, align 8
@KPSEL = common dso_local global i32 0, align 4
@ENKP = common dso_local global i32 0, align 4
@KSIZE0 = common dso_local global i32 0, align 4
@KSIZE1 = common dso_local global i32 0, align 4
@DEBOUNCE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @w90p910_keypad_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w90p910_keypad_open(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.w90p910_keypad*, align 8
  %4 = alloca %struct.w90p910_keypad_platform_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %7 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %8 = call %struct.w90p910_keypad* @input_get_drvdata(%struct.input_dev* %7)
  store %struct.w90p910_keypad* %8, %struct.w90p910_keypad** %3, align 8
  %9 = load %struct.w90p910_keypad*, %struct.w90p910_keypad** %3, align 8
  %10 = getelementptr inbounds %struct.w90p910_keypad, %struct.w90p910_keypad* %9, i32 0, i32 2
  %11 = load %struct.w90p910_keypad_platform_data*, %struct.w90p910_keypad_platform_data** %10, align 8
  store %struct.w90p910_keypad_platform_data* %11, %struct.w90p910_keypad_platform_data** %4, align 8
  %12 = load %struct.w90p910_keypad*, %struct.w90p910_keypad** %3, align 8
  %13 = getelementptr inbounds %struct.w90p910_keypad, %struct.w90p910_keypad* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @clk_enable(i32 %14)
  %16 = load %struct.w90p910_keypad*, %struct.w90p910_keypad** %3, align 8
  %17 = getelementptr inbounds %struct.w90p910_keypad, %struct.w90p910_keypad* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @KPI_CONF, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @__raw_readl(i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @KPSEL, align 4
  %23 = load i32, i32* @ENKP, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @KSIZE0, align 4
  %28 = load i32, i32* @KSIZE1, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.w90p910_keypad_platform_data*, %struct.w90p910_keypad_platform_data** %4, align 8
  %34 = getelementptr inbounds %struct.w90p910_keypad_platform_data, %struct.w90p910_keypad_platform_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.w90p910_keypad_platform_data*, %struct.w90p910_keypad_platform_data** %4, align 8
  %37 = getelementptr inbounds %struct.w90p910_keypad_platform_data, %struct.w90p910_keypad_platform_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DEBOUNCE_BIT, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %35, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.w90p910_keypad*, %struct.w90p910_keypad** %3, align 8
  %47 = getelementptr inbounds %struct.w90p910_keypad, %struct.w90p910_keypad* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @KPI_CONF, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @__raw_writel(i32 %45, i64 %50)
  ret i32 0
}

declare dso_local %struct.w90p910_keypad* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
