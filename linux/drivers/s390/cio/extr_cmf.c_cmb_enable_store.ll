; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_cmb_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_cmb_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ccw_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @cmb_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmb_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ccw_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.ccw_device* @to_ccwdev(%struct.device* %13)
  store %struct.ccw_device* %14, %struct.ccw_device** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtoul(i8* %15, i32 16, i64* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %43

21:                                               ; preds = %4
  %22 = load i64, i64* %11, align 8
  switch i64 %22, label %29 [
    i64 0, label %23
    i64 1, label %26
  ]

23:                                               ; preds = %21
  %24 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  %25 = call i32 @disable_cmf(%struct.ccw_device* %24)
  store i32 %25, i32* %12, align 4
  br label %32

26:                                               ; preds = %21
  %27 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  %28 = call i32 @enable_cmf(%struct.ccw_device* %27)
  store i32 %28, i32* %12, align 4
  br label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %29, %26, %23
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  br label %40

38:                                               ; preds = %32
  %39 = load i64, i64* %9, align 8
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi i64 [ %37, %35 ], [ %39, %38 ]
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %19
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @disable_cmf(%struct.ccw_device*) #1

declare dso_local i32 @enable_cmf(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
