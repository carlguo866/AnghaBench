; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_get_inttime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_get_inttime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isl29501_private = type { i32 }

@REG_INT_TIME = common dso_local global i32 0, align 4
@isl29501_int_time = common dso_local global i32** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isl29501_private*, i32*, i32*)* @isl29501_get_inttime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29501_get_inttime(%struct.isl29501_private* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.isl29501_private*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.isl29501_private* %0, %struct.isl29501_private** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.isl29501_private*, %struct.isl29501_private** %5, align 8
  %11 = load i32, i32* @REG_INT_TIME, align 4
  %12 = call i32 @isl29501_register_read(%struct.isl29501_private* %10, i32 %11, i64* %9)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %41

17:                                               ; preds = %3
  %18 = load i64, i64* %9, align 8
  %19 = load i32**, i32*** @isl29501_int_time, align 8
  %20 = call i64 @ARRAY_SIZE(i32** %19)
  %21 = icmp uge i64 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %41

25:                                               ; preds = %17
  %26 = load i32**, i32*** @isl29501_int_time, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32**, i32*** @isl29501_int_time, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds i32*, i32** %33, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %25, %22, %15
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @isl29501_register_read(%struct.isl29501_private*, i32, i64*) #1

declare dso_local i64 @ARRAY_SIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
