; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_set_pwm_fan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_set_pwm_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@fcu_fans = common dso_local global %struct.TYPE_2__* null, align 8
@FCU_FAN_PWM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FCU_FAN_ABSENT_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @set_pwm_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pwm_fan(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fcu_fans, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FCU_FAN_PWM, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %59

20:                                               ; preds = %2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fcu_fans, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @FCU_FAN_ABSENT_ID, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %59

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 10
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 10, i32* %5, align 4
  br label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %38, 100
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 100, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %37
  br label %42

42:                                               ; preds = %41, %36
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %43, 2559
  %45 = sdiv i32 %44, 1000
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 %47, i8* %48, align 1
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 %49, 2
  %51 = add nsw i32 48, %50
  %52 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %53 = call i32 @fan_write_reg(i32 %51, i8* %52, i32 1)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %56, %30, %17
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @fan_write_reg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
