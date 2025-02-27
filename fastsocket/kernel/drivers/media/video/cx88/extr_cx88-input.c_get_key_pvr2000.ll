; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-input.c_get_key_pvr2000.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-input.c_get_key_pvr2000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"read error\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"IR Key/Flags: (0x%02x/0x%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i32*, i32*)* @get_key_pvr2000 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_pvr2000(%struct.IR_i2c* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IR_i2c*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.IR_i2c* %0, %struct.IR_i2c** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %11 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @i2c_smbus_read_byte_data(i32 %12, i32 16)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %43

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 128
  %21 = icmp eq i32 0, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %43

23:                                               ; preds = %18
  %24 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %25 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @i2c_smbus_read_byte_data(i32 %26, i32 0)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %43

32:                                               ; preds = %23
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 255
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, 255
  %37 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, 255
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %32, %30, %22, %16
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
