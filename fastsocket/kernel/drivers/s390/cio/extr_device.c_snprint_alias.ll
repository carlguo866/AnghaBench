; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_snprint_alias.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_snprint_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device_id = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"ccw:t%04Xm%02X\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"dt%04Xdm%02X%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"dtdm%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.ccw_device_id*, i8*)* @snprint_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snprint_alias(i8* %0, i64 %1, %struct.ccw_device_id* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ccw_device_id*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.ccw_device_id* %2, %struct.ccw_device_id** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.ccw_device_id*, %struct.ccw_device_id** %8, align 8
  %14 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ccw_device_id*, %struct.ccw_device_id** %8, align 8
  %17 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %11, i64 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %7, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %61

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %7, align 8
  %34 = sub i64 %33, %32
  store i64 %34, i64* %7, align 8
  %35 = load %struct.ccw_device_id*, %struct.ccw_device_id** %8, align 8
  %36 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %26
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.ccw_device_id*, %struct.ccw_device_id** %8, align 8
  %43 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ccw_device_id*, %struct.ccw_device_id** %8, align 8
  %46 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %40, i64 %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %44, i32 %47, i8* %48)
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %59

52:                                               ; preds = %26
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %53, i64 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %52, %39
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %24
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
