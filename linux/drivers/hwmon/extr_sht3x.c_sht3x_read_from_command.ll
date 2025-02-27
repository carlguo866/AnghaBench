; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht3x.c_sht3x_read_from_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht3x.c_sht3x_read_from_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.sht3x_data = type { i32 }

@SHT3X_CMD_LENGTH = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.sht3x_data*, i8*, i8*, i32, i64)* @sht3x_read_from_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sht3x_read_from_command(%struct.i2c_client* %0, %struct.sht3x_data* %1, i8* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.sht3x_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %7, align 8
  store %struct.sht3x_data* %1, %struct.sht3x_data** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %14 = load %struct.sht3x_data*, %struct.sht3x_data** %8, align 8
  %15 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i32, i32* @SHT3X_CMD_LENGTH, align 4
  %20 = call i32 @i2c_master_send(%struct.i2c_client* %17, i8* %18, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @SHT3X_CMD_LENGTH, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %6
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %13, align 4
  br label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi i32 [ %28, %27 ], [ %31, %29 ]
  store i32 %33, i32* %13, align 4
  br label %61

34:                                               ; preds = %6
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = add nsw i64 %39, 1000
  %41 = call i32 @usleep_range(i64 %38, i64 %40)
  br label %42

42:                                               ; preds = %37, %34
  %43 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @i2c_master_recv(%struct.i2c_client* %43, i8* %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %42
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %13, align 4
  br label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  br label %58

58:                                               ; preds = %55, %53
  %59 = phi i32 [ %54, %53 ], [ %57, %55 ]
  store i32 %59, i32* %13, align 4
  br label %61

60:                                               ; preds = %42
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %60, %58, %32
  %62 = load %struct.sht3x_data*, %struct.sht3x_data** %8, align 8
  %63 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %13, align 4
  ret i32 %65
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
