; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_i2c_w_slave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_i2c_w_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i8, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Couldn't restore primary I2C slave\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i8, i8, i8, i8)* @i2c_w_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_w_slave(%struct.usb_ov511* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4) #0 {
  %6 = alloca %struct.usb_ov511*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  store i8 %4, i8* %10, align 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.usb_ov511*, %struct.usb_ov511** %6, align 8
  %13 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.usb_ov511*, %struct.usb_ov511** %6, align 8
  %16 = load i8, i8* %7, align 1
  %17 = call i32 @i2c_set_slave_internal(%struct.usb_ov511* %15, i8 zeroext %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %27

21:                                               ; preds = %5
  %22 = load %struct.usb_ov511*, %struct.usb_ov511** %6, align 8
  %23 = load i8, i8* %8, align 1
  %24 = load i8, i8* %9, align 1
  %25 = load i8, i8* %10, align 1
  %26 = call i32 @ov51x_i2c_write_mask_internal(%struct.usb_ov511* %22, i8 zeroext %23, i8 zeroext %24, i8 zeroext %25)
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %21, %20
  %28 = load %struct.usb_ov511*, %struct.usb_ov511** %6, align 8
  %29 = load %struct.usb_ov511*, %struct.usb_ov511** %6, align 8
  %30 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 4
  %32 = call i32 @i2c_set_slave_internal(%struct.usb_ov511* %28, i8 zeroext %31)
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %27
  %37 = load %struct.usb_ov511*, %struct.usb_ov511** %6, align 8
  %38 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %11, align 4
  ret i32 %40
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_set_slave_internal(%struct.usb_ov511*, i8 zeroext) #1

declare dso_local i32 @ov51x_i2c_write_mask_internal(%struct.usb_ov511*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
