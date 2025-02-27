; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_read_smbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_read_smbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i8, i8*)* @ov7670_read_smbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_read_smbus(%struct.v4l2_subdev* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8* %2, i8** %6, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %7, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %12 = load i8, i8* %5, align 1
  %13 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %11, i8 zeroext %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = trunc i32 %17 to i8
  %19 = load i8*, i8** %6, align 8
  store i8 %18, i8* %19, align 1
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i32, i32* %8, align 4
  ret i32 %21
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
