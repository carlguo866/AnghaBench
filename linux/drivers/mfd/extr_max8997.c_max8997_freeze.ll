; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max8997.c_max8997_freeze.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max8997.c_max8997_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.max8997_dev = type { i32* }

@max8997_dumpaddr_pmic = common dso_local global i32* null, align 8
@max8997_dumpaddr_muic = common dso_local global i32* null, align 8
@MAX8997_REG_PMIC_END = common dso_local global i32 0, align 4
@max8997_dumpaddr_haptic = common dso_local global i32* null, align 8
@MAX8997_MUIC_REG_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @max8997_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_freeze(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.max8997_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.i2c_client* @to_i2c_client(%struct.device* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.max8997_dev* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.max8997_dev* %9, %struct.max8997_dev** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %29, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32*, i32** @max8997_dumpaddr_pmic, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = load i32*, i32** @max8997_dumpaddr_pmic, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %23 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @max8997_read_reg(%struct.i2c_client* %16, i32 %21, i32* %27)
  br label %29

29:                                               ; preds = %15
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %10

32:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %54, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32*, i32** @max8997_dumpaddr_muic, align 8
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = load i32*, i32** @max8997_dumpaddr_muic, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %46 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @MAX8997_REG_PMIC_END, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = call i32 @max8997_read_reg(%struct.i2c_client* %39, i32 %44, i32* %52)
  br label %54

54:                                               ; preds = %38
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %33

57:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %81, %57
  %59 = load i32, i32* %5, align 4
  %60 = load i32*, i32** @max8997_dumpaddr_haptic, align 8
  %61 = call i32 @ARRAY_SIZE(i32* %60)
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %58
  %64 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %65 = load i32*, i32** @max8997_dumpaddr_haptic, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %71 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @MAX8997_REG_PMIC_END, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* @MAX8997_MUIC_REG_END, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %72, i64 %78
  %80 = call i32 @max8997_read_reg(%struct.i2c_client* %64, i32 %69, i32* %79)
  br label %81

81:                                               ; preds = %63
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %58

84:                                               ; preds = %58
  ret i32 0
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.max8997_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @max8997_read_reg(%struct.i2c_client*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
