; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-scpi.c_scpi_clk_ops_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-scpi.c_scpi_clk_ops_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.of_device_id = type { i32* }
%struct.scpi_clk = type { %struct.TYPE_5__, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i32*, i64, i64 }
%struct.TYPE_4__ = type { i64 (i32, i64*, i64*)*, i32 (i32)* }

@scpi_dvfs_ops = common dso_local global i32 0, align 4
@scpi_clk_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.of_device_id*, %struct.scpi_clk*, i8*)* @scpi_clk_ops_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scpi_clk_ops_init(%struct.device* %0, %struct.of_device_id* %1, %struct.scpi_clk* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca %struct.scpi_clk*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.clk_init_data, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.of_device_id* %1, %struct.of_device_id** %7, align 8
  store %struct.scpi_clk* %2, %struct.scpi_clk** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  %16 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %19 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 1
  store i32* %20, i32** %21, align 8
  %22 = load %struct.scpi_clk*, %struct.scpi_clk** %8, align 8
  %23 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store %struct.clk_init_data* %10, %struct.clk_init_data** %24, align 8
  %25 = call %struct.TYPE_4__* (...) @get_scpi_ops()
  %26 = load %struct.scpi_clk*, %struct.scpi_clk** %8, align 8
  %27 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %26, i32 0, i32 2
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %27, align 8
  %28 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, @scpi_dvfs_ops
  br i1 %30, label %31, label %54

31:                                               ; preds = %4
  %32 = load %struct.scpi_clk*, %struct.scpi_clk** %8, align 8
  %33 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32 (i32)*, i32 (i32)** %35, align 8
  %37 = load %struct.scpi_clk*, %struct.scpi_clk** %8, align 8
  %38 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %36(i32 %39)
  %41 = load %struct.scpi_clk*, %struct.scpi_clk** %8, align 8
  %42 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.scpi_clk*, %struct.scpi_clk** %8, align 8
  %44 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %31
  %49 = load %struct.scpi_clk*, %struct.scpi_clk** %8, align 8
  %50 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PTR_ERR(i32 %51)
  store i32 %52, i32* %5, align 4
  br label %98

53:                                               ; preds = %31
  br label %80

54:                                               ; preds = %4
  %55 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, @scpi_clk_ops
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load %struct.scpi_clk*, %struct.scpi_clk** %8, align 8
  %60 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64 (i32, i64*, i64*)*, i64 (i32, i64*, i64*)** %62, align 8
  %64 = load %struct.scpi_clk*, %struct.scpi_clk** %8, align 8
  %65 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 %63(i32 %66, i64* %11, i64* %12)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %58
  %70 = load i64, i64* %12, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69, %58
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %98

75:                                               ; preds = %69
  br label %79

76:                                               ; preds = %54
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %98

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79, %53
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = load %struct.scpi_clk*, %struct.scpi_clk** %8, align 8
  %83 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %82, i32 0, i32 0
  %84 = call i32 @devm_clk_hw_register(%struct.device* %81, %struct.TYPE_5__* %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %80
  %88 = load i64, i64* %12, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.scpi_clk*, %struct.scpi_clk** %8, align 8
  %92 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %91, i32 0, i32 0
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %12, align 8
  %95 = call i32 @clk_hw_set_rate_range(%struct.TYPE_5__* %92, i64 %93, i64 %94)
  br label %96

96:                                               ; preds = %90, %87, %80
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %96, %76, %72, %48
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_4__* @get_scpi_ops(...) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.TYPE_5__*) #1

declare dso_local i32 @clk_hw_set_rate_range(%struct.TYPE_5__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
