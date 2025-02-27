; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxreg-io.c_mlxreg_io_attr_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxreg-io.c_mlxreg_io_attr_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.mlxreg_io_priv_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.mlxreg_core_data* }
%struct.mlxreg_core_data = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @mlxreg_io_attr_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_io_attr_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlxreg_io_priv_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxreg_core_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.mlxreg_io_priv_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.mlxreg_io_priv_data* %14, %struct.mlxreg_io_priv_data** %8, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = call %struct.TYPE_4__* @to_sensor_dev_attr(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %8, align 8
  %20 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %23, i64 %25
  store %struct.mlxreg_core_data* %26, %struct.mlxreg_core_data** %10, align 8
  store i32 0, i32* %11, align 4
  %27 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %8, align 8
  %28 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %10, align 8
  %33 = call i32 @mlxreg_io_get_reg(i32 %31, %struct.mlxreg_core_data* %32, i32 0, i32 1, i32* %11)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  br label %41

37:                                               ; preds = %3
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %4, align 4
  br label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.mlxreg_io_priv_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_4__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @mlxreg_io_get_reg(i32, %struct.mlxreg_core_data*, i32, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
