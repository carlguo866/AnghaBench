; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_uniphier_thermal.c_uniphier_tm_enable_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_uniphier_thermal.c_uniphier_tm_enable_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_tm_dev = type { %struct.TYPE_2__*, i64*, %struct.regmap* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.regmap = type { i32 }

@ALERT_CH_NUM = common dso_local global i32 0, align 4
@PMALERTINTCTL = common dso_local global i64 0, align 8
@PMALERTINTCTL_MASK = common dso_local global i32 0, align 4
@PVTCTLEN = common dso_local global i64 0, align 8
@PVTCTLEN_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uniphier_tm_dev*)* @uniphier_tm_enable_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_tm_enable_sensor(%struct.uniphier_tm_dev* %0) #0 {
  %2 = alloca %struct.uniphier_tm_dev*, align 8
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uniphier_tm_dev* %0, %struct.uniphier_tm_dev** %2, align 8
  %6 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %2, align 8
  %7 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %6, i32 0, i32 2
  %8 = load %struct.regmap*, %struct.regmap** %7, align 8
  store %struct.regmap* %8, %struct.regmap** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ALERT_CH_NUM, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %2, align 8
  %15 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @PMALERTINTCTL_EN(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %22, %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %9

31:                                               ; preds = %9
  %32 = load %struct.regmap*, %struct.regmap** %3, align 8
  %33 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %2, align 8
  %34 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PMALERTINTCTL, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i32, i32* @PMALERTINTCTL_MASK, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @regmap_write_bits(%struct.regmap* %32, i64 %39, i32 %40, i32 %41)
  %43 = load %struct.regmap*, %struct.regmap** %3, align 8
  %44 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %2, align 8
  %45 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PVTCTLEN, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* @PVTCTLEN_EN, align 4
  %52 = load i32, i32* @PVTCTLEN_EN, align 4
  %53 = call i32 @regmap_write_bits(%struct.regmap* %43, i64 %50, i32 %51, i32 %52)
  %54 = call i32 @usleep_range(i32 700, i32 1500)
  ret void
}

declare dso_local i32 @PMALERTINTCTL_EN(i32) #1

declare dso_local i32 @regmap_write_bits(%struct.regmap*, i64, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
