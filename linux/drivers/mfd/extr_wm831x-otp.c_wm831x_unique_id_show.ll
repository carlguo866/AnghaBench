; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-otp.c_wm831x_unique_id_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-otp.c_wm831x_unique_id_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.wm831x = type { i32 }

@WM831X_UNIQUE_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%*phN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @wm831x_unique_id_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_unique_id_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wm831x*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.wm831x* @dev_get_drvdata(%struct.device* %13)
  store %struct.wm831x* %14, %struct.wm831x** %8, align 8
  %15 = load i32, i32* @WM831X_UNIQUE_ID_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %20 = call i32 @wm831x_unique_id_read(%struct.wm831x* %19, i8* %18)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %28

24:                                               ; preds = %3
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @WM831X_UNIQUE_ID_LEN, align 4
  %27 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %18)
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %28

28:                                               ; preds = %24, %23
  %29 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %29)
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.wm831x* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @wm831x_unique_id_read(%struct.wm831x*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
