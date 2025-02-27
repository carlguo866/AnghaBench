; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov511_i2c_w.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov511_i2c_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }
%struct.gspca_dev = type { i32 }

@D_USBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ov511_i2c_w %02x %02x\0A\00", align 1
@R51x_I2C_SADDR_3 = common dso_local global i32 0, align 4
@R51x_I2C_DATA = common dso_local global i32 0, align 4
@R511_I2C_CTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"i2c write retries exhausted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, i32, i32)* @ov511_i2c_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov511_i2c_w(%struct.sd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gspca_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sd*, %struct.sd** %4, align 8
  %11 = bitcast %struct.sd* %10 to %struct.gspca_dev*
  store %struct.gspca_dev* %11, %struct.gspca_dev** %7, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %13 = load i32, i32* @D_USBO, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %12, i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  store i32 6, i32* %9, align 4
  br label %17

17:                                               ; preds = %59, %3
  %18 = load %struct.sd*, %struct.sd** %4, align 8
  %19 = load i32, i32* @R51x_I2C_SADDR_3, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @reg_w(%struct.sd* %18, i32 %19, i32 %20)
  %22 = load %struct.sd*, %struct.sd** %4, align 8
  %23 = load i32, i32* @R51x_I2C_DATA, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @reg_w(%struct.sd* %22, i32 %23, i32 %24)
  %26 = load %struct.sd*, %struct.sd** %4, align 8
  %27 = load i32, i32* @R511_I2C_CTL, align 4
  %28 = call i32 @reg_w(%struct.sd* %26, i32 %27, i32 1)
  br label %29

29:                                               ; preds = %40, %17
  %30 = load %struct.sd*, %struct.sd** %4, align 8
  %31 = load i32, i32* @R511_I2C_CTL, align 4
  %32 = call i32 @reg_r(%struct.sd* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i1 [ false, %33 ], [ %39, %36 ]
  br i1 %41, label %29, label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %60

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %60

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %57 = load i32, i32* @D_USBO, align 4
  %58 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %56, i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %60

59:                                               ; preds = %51
  br label %17

60:                                               ; preds = %45, %55, %50
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, ...) #1

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @reg_r(%struct.sd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
