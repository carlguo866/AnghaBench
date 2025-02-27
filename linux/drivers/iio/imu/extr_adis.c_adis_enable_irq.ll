; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis.c_adis_enable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis.c_adis_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adis = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, i32 }

@ADIS_MSC_CTRL_DATA_RDY_POL_HIGH = common dso_local global i32 0, align 4
@ADIS_MSC_CTRL_DATA_RDY_DIO2 = common dso_local global i32 0, align 4
@ADIS_MSC_CTRL_DATA_RDY_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adis_enable_irq(%struct.adis* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adis*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adis* %0, %struct.adis** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.adis*, %struct.adis** %4, align 8
  %9 = getelementptr inbounds %struct.adis, %struct.adis* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.adis*, i32)**
  %13 = load i32 (%struct.adis*, i32)*, i32 (%struct.adis*, i32)** %12, align 8
  %14 = icmp ne i32 (%struct.adis*, i32)* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.adis*, %struct.adis** %4, align 8
  %17 = getelementptr inbounds %struct.adis, %struct.adis* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.adis*, i32)**
  %21 = load i32 (%struct.adis*, i32)*, i32 (%struct.adis*, i32)** %20, align 8
  %22 = load %struct.adis*, %struct.adis** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 %21(%struct.adis* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %66

25:                                               ; preds = %2
  %26 = load %struct.adis*, %struct.adis** %4, align 8
  %27 = load %struct.adis*, %struct.adis** %4, align 8
  %28 = getelementptr inbounds %struct.adis, %struct.adis* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @adis_read_reg_16(%struct.adis* %26, i32 %31, i32* %7)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %64

36:                                               ; preds = %25
  %37 = load i32, i32* @ADIS_MSC_CTRL_DATA_RDY_POL_HIGH, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @ADIS_MSC_CTRL_DATA_RDY_DIO2, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load i32, i32* @ADIS_MSC_CTRL_DATA_RDY_EN, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %55

50:                                               ; preds = %36
  %51 = load i32, i32* @ADIS_MSC_CTRL_DATA_RDY_EN, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %50, %46
  %56 = load %struct.adis*, %struct.adis** %4, align 8
  %57 = load %struct.adis*, %struct.adis** %4, align 8
  %58 = getelementptr inbounds %struct.adis, %struct.adis* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @adis_write_reg_16(%struct.adis* %56, i32 %61, i32 %62)
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %55, %35
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %15
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @adis_read_reg_16(%struct.adis*, i32, i32*) #1

declare dso_local i32 @adis_write_reg_16(%struct.adis*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
