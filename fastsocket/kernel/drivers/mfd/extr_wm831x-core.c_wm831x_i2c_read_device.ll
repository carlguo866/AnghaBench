; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-core.c_wm831x_i2c_read_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-core.c_wm831x_i2c_read_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm831x*, i16, i32, i8*)* @wm831x_i2c_read_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_i2c_read_device(%struct.wm831x* %0, i16 zeroext %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm831x*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %6, align 8
  store i16 %1, i16* %7, align 2
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %14 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %13, i32 0, i32 0
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %10, align 8
  %16 = load i16, i16* %7, align 2
  %17 = call i32 @cpu_to_be16(i16 zeroext %16)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %19 = bitcast i32* %12 to i8*
  %20 = call i32 @i2c_master_send(%struct.i2c_client* %18, i8* %19, i32 2)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %5, align 4
  br label %48

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %48

31:                                               ; preds = %25
  %32 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @i2c_master_recv(%struct.i2c_client* %32, i8* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %5, align 4
  br label %48

40:                                               ; preds = %31
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %48

47:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %44, %38, %28, %23
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @cpu_to_be16(i16 zeroext) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
