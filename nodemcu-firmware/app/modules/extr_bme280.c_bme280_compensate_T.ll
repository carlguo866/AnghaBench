; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme280.c_bme280_compensate_T.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme280.c_bme280_compensate_T.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@bme280_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@bme280_t_fine = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bme280_compensate_T to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme280_compensate_T(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, 3
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme280_data, i32 0, i32 1), align 8
  %9 = trunc i64 %8 to i32
  %10 = shl i32 %9, 1
  %11 = sub nsw i32 %7, %10
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme280_data, i32 0, i32 2), align 8
  %13 = trunc i64 %12 to i32
  %14 = mul nsw i32 %11, %13
  %15 = ashr i32 %14, 11
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %2, align 4
  %17 = ashr i32 %16, 4
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme280_data, i32 0, i32 1), align 8
  %19 = trunc i64 %18 to i32
  %20 = sub nsw i32 %17, %19
  %21 = load i32, i32* %2, align 4
  %22 = ashr i32 %21, 4
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme280_data, i32 0, i32 1), align 8
  %24 = trunc i64 %23 to i32
  %25 = sub nsw i32 %22, %24
  %26 = mul nsw i32 %20, %25
  %27 = ashr i32 %26, 12
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bme280_data, i32 0, i32 0), align 8
  %29 = trunc i64 %28 to i32
  %30 = mul nsw i32 %27, %29
  %31 = ashr i32 %30, 14
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* @bme280_t_fine, align 4
  %35 = load i32, i32* @bme280_t_fine, align 4
  %36 = mul nsw i32 %35, 5
  %37 = add nsw i32 %36, 128
  %38 = ashr i32 %37, 8
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
