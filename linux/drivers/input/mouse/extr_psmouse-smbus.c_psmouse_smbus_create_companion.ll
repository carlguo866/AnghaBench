; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-smbus.c_psmouse_smbus_create_companion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-smbus.c_psmouse_smbus_create_companion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.psmouse_smbus_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i16 }
%struct.i2c_adapter = type { i32 }

@I2C_CLIENT_END = common dso_local global i16 0, align 2
@I2C_FUNC_SMBUS_HOST_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @psmouse_smbus_create_companion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psmouse_smbus_create_companion(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.psmouse_smbus_dev*, align 8
  %7 = alloca [2 x i16], align 2
  %8 = alloca %struct.i2c_adapter*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.psmouse_smbus_dev*
  store %struct.psmouse_smbus_dev* %10, %struct.psmouse_smbus_dev** %6, align 8
  %11 = getelementptr inbounds [2 x i16], [2 x i16]* %7, i64 0, i64 0
  %12 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %6, align 8
  %13 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i16, i16* %14, align 4
  store i16 %15, i16* %11, align 2
  %16 = getelementptr inbounds i16, i16* %11, i64 1
  %17 = load i16, i16* @I2C_CLIENT_END, align 2
  store i16 %17, i16* %16, align 2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call %struct.i2c_adapter* @i2c_verify_adapter(%struct.device* %18)
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %8, align 8
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %21 = icmp ne %struct.i2c_adapter* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

23:                                               ; preds = %2
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %25 = load i32, i32* @I2C_FUNC_SMBUS_HOST_NOTIFY, align 4
  %26 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %43

29:                                               ; preds = %23
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %31 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %6, align 8
  %32 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %31, i32 0, i32 1
  %33 = getelementptr inbounds [2 x i16], [2 x i16]* %7, i64 0, i64 0
  %34 = call i32 @i2c_new_probed_device(%struct.i2c_adapter* %30, %struct.TYPE_2__* %32, i16* %33, i32* null)
  %35 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %6, align 8
  %36 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %6, align 8
  %38 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %43

42:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %41, %28, %22
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.i2c_adapter* @i2c_verify_adapter(%struct.device*) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_new_probed_device(%struct.i2c_adapter*, %struct.TYPE_2__*, i16*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
