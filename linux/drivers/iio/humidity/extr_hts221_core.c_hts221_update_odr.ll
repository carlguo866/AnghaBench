; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_core.c_hts221_update_odr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_core.c_hts221_update_odr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.hts221_hw = type { i64, i32 }

@hts221_odr_table = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@HTS221_REG_CNTRL1_ADDR = common dso_local global i32 0, align 4
@HTS221_ODR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hts221_hw*, i64)* @hts221_update_odr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hts221_update_odr(%struct.hts221_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hts221_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hts221_hw* %0, %struct.hts221_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %24, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hts221_odr_table, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hts221_odr_table, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %27

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %8

27:                                               ; preds = %22, %8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hts221_odr_table, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %29)
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %58

35:                                               ; preds = %27
  %36 = load %struct.hts221_hw*, %struct.hts221_hw** %4, align 8
  %37 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @HTS221_REG_CNTRL1_ADDR, align 4
  %40 = load i32, i32* @HTS221_ODR_MASK, align 4
  %41 = load i32, i32* @HTS221_ODR_MASK, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hts221_odr_table, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @FIELD_PREP(i32 %41, i32 %47)
  %49 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %40, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %35
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %58

54:                                               ; preds = %35
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.hts221_hw*, %struct.hts221_hw** %4, align 8
  %57 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %52, %32
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
