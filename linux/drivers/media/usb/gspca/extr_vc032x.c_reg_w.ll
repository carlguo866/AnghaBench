; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_vc032x.c_reg_w.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_vc032x.c_reg_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64 }

@D_USBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"SET %02x %04x %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32, i32)* @reg_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_w(%struct.gspca_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %26

14:                                               ; preds = %4
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %16 = load i32, i32* @D_USBO, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @gspca_dbg(%struct.gspca_dev* %15, i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @reg_w_i(%struct.gspca_dev* %21, i32 %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @reg_w_i(%struct.gspca_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
