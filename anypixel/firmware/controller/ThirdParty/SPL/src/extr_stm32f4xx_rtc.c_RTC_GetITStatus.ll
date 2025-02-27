; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rtc.c_RTC_GetITStatus.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rtc.c_RTC_GetITStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@RESET = common dso_local global i64 0, align 8
@RTC = common dso_local global %struct.TYPE_2__* null, align 8
@RTC_TAFCR_TAMPIE = common dso_local global i32 0, align 4
@SET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RTC_GetITStatus(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* @RESET, align 8
  store i64 %6, i64* %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @IS_RTC_GET_IT(i32 %7)
  %9 = call i32 @assert_param(i32 %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RTC_TAFCR_TAMPIE, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %2, align 4
  %22 = ashr i32 %21, 15
  %23 = and i32 %20, %22
  %24 = or i32 %19, %23
  store i32 %24, i32* %5, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %2, align 4
  %29 = ashr i32 %28, 4
  %30 = and i32 %27, %29
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i64, i64* @RESET, align 8
  %33 = trunc i64 %32 to i32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 65535
  %38 = load i64, i64* @RESET, align 8
  %39 = trunc i64 %38 to i32
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* @SET, align 8
  store i64 %42, i64* %3, align 8
  br label %45

43:                                               ; preds = %35, %1
  %44 = load i64, i64* @RESET, align 8
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_RTC_GET_IT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
