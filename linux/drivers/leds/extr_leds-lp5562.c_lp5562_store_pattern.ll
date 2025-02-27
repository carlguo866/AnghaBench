; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5562.c_lp5562_store_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5562.c_lp5562_store_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lp55xx_led = type { %struct.lp55xx_chip* }
%struct.lp55xx_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.lp55xx_predef_pattern* }
%struct.lp55xx_predef_pattern = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lp5562_store_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp5562_store_pattern(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lp55xx_led*, align 8
  %11 = alloca %struct.lp55xx_chip*, align 8
  %12 = alloca %struct.lp55xx_predef_pattern*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call i32 @to_i2c_client(%struct.device* %16)
  %18 = call %struct.lp55xx_led* @i2c_get_clientdata(i32 %17)
  store %struct.lp55xx_led* %18, %struct.lp55xx_led** %10, align 8
  %19 = load %struct.lp55xx_led*, %struct.lp55xx_led** %10, align 8
  %20 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %19, i32 0, i32 0
  %21 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %20, align 8
  store %struct.lp55xx_chip* %21, %struct.lp55xx_chip** %11, align 8
  %22 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %11, align 8
  %23 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.lp55xx_predef_pattern*, %struct.lp55xx_predef_pattern** %25, align 8
  store %struct.lp55xx_predef_pattern* %26, %struct.lp55xx_predef_pattern** %12, align 8
  %27 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %11, align 8
  %28 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %13, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @kstrtoul(i8* %32, i32 0, i64* %14)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %5, align 4
  br label %66

38:                                               ; preds = %4
  %39 = load i64, i64* %14, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ugt i64 %39, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load %struct.lp55xx_predef_pattern*, %struct.lp55xx_predef_pattern** %12, align 8
  %45 = icmp ne %struct.lp55xx_predef_pattern* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %66

49:                                               ; preds = %43
  %50 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %11, align 8
  %51 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %11, align 8
  %54 = load i64, i64* %14, align 8
  %55 = call i32 @lp5562_run_predef_led_pattern(%struct.lp55xx_chip* %53, i64 %54)
  store i32 %55, i32* %15, align 4
  %56 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %11, align 8
  %57 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %5, align 4
  br label %66

63:                                               ; preds = %49
  %64 = load i64, i64* %9, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %61, %46, %36
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.lp55xx_led* @i2c_get_clientdata(i32) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lp5562_run_predef_led_pattern(%struct.lp55xx_chip*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
