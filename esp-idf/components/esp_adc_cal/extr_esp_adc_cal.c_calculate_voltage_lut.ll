; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_adc_cal/extr_esp_adc_cal.c_calculate_voltage_lut.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_adc_cal/extr_esp_adc_cal.c_calculate_voltage_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUT_LOW_THRESH = common dso_local global i32 0, align 4
@LUT_ADC_STEP_SIZE = common dso_local global i32 0, align 4
@LUT_VREF_HIGH = common dso_local global i32 0, align 4
@LUT_VREF_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @calculate_voltage_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_voltage_lut(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @LUT_LOW_THRESH, align 4
  %21 = sub nsw i32 %19, %20
  %22 = load i32, i32* @LUT_ADC_STEP_SIZE, align 4
  %23 = sdiv i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @LUT_VREF_HIGH, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @LUT_VREF_LOW, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* @LUT_ADC_STEP_SIZE, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* @LUT_LOW_THRESH, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @LUT_ADC_STEP_SIZE, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* @LUT_LOW_THRESH, align 4
  %43 = add nsw i32 %41, %42
  %44 = sub nsw i32 %38, %43
  store i32 %44, i32* %13, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %15, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %16, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %10, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load i32, i32* %12, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %11, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %12, align 4
  %76 = mul nsw i32 %74, %75
  %77 = add nsw i32 %71, %76
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %10, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %13, align 4
  %82 = mul nsw i32 %80, %81
  %83 = add nsw i32 %77, %82
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %11, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %13, align 4
  %88 = mul nsw i32 %86, %87
  %89 = add nsw i32 %83, %88
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* @LUT_VREF_HIGH, align 4
  %91 = load i32, i32* @LUT_VREF_LOW, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load i32, i32* @LUT_ADC_STEP_SIZE, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sdiv i32 %94, 2
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* @LUT_VREF_HIGH, align 4
  %99 = load i32, i32* @LUT_VREF_LOW, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32, i32* @LUT_ADC_STEP_SIZE, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load i32, i32* %18, align 4
  %104 = sdiv i32 %103, %102
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  ret i32 %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
