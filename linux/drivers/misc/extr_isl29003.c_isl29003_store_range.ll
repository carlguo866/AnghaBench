; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_isl29003.c_isl29003_store_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_isl29003.c_isl29003_store_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @isl29003_store_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29003_store_range(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtoul(i8* %15, i32 10, i64* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %38

21:                                               ; preds = %4
  %22 = load i64, i64* %11, align 8
  %23 = icmp ugt i64 %22, 3
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %38

27:                                               ; preds = %21
  %28 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @isl29003_set_range(%struct.i2c_client* %28, i64 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %38

35:                                               ; preds = %27
  %36 = load i64, i64* %9, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %33, %24, %19
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @isl29003_set_range(%struct.i2c_client*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
