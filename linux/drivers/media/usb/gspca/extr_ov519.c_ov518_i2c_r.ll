; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov518_i2c_r.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov518_i2c_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }
%struct.gspca_dev = type { i32 }

@R51x_I2C_SADDR_2 = common dso_local global i32 0, align 4
@R518_I2C_CTL = common dso_local global i32 0, align 4
@R51x_I2C_DATA = common dso_local global i32 0, align 4
@D_USBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ov518_i2c_r %02x %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i32)* @ov518_i2c_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov518_i2c_r(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = bitcast %struct.sd* %7 to %struct.gspca_dev*
  store %struct.gspca_dev* %8, %struct.gspca_dev** %5, align 8
  %9 = load %struct.sd*, %struct.sd** %3, align 8
  %10 = load i32, i32* @R51x_I2C_SADDR_2, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @reg_w(%struct.sd* %9, i32 %10, i32 %11)
  %13 = load %struct.sd*, %struct.sd** %3, align 8
  %14 = load i32, i32* @R518_I2C_CTL, align 4
  %15 = call i32 @reg_w(%struct.sd* %13, i32 %14, i32 3)
  %16 = load %struct.sd*, %struct.sd** %3, align 8
  %17 = load i32, i32* @R518_I2C_CTL, align 4
  %18 = call i32 @reg_r8(%struct.sd* %16, i32 %17)
  %19 = load %struct.sd*, %struct.sd** %3, align 8
  %20 = load i32, i32* @R518_I2C_CTL, align 4
  %21 = call i32 @reg_w(%struct.sd* %19, i32 %20, i32 5)
  %22 = load %struct.sd*, %struct.sd** %3, align 8
  %23 = load i32, i32* @R518_I2C_CTL, align 4
  %24 = call i32 @reg_r8(%struct.sd* %22, i32 %23)
  %25 = load %struct.sd*, %struct.sd** %3, align 8
  %26 = load i32, i32* @R51x_I2C_DATA, align 4
  %27 = call i32 @reg_r(%struct.sd* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %29 = load i32, i32* @D_USBI, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @gspca_dbg(%struct.gspca_dev* %28, i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @reg_r8(%struct.sd*, i32) #1

declare dso_local i32 @reg_r(%struct.sd*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
