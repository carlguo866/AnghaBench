; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dcdbas.c_smi_data_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dcdbas.c_smi_data_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }

@max_smi_data_buf_size = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@smi_data_lock = common dso_local global i32 0, align 4
@smi_data_buf = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @smi_data_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smi_data_write(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i64, i64* %12, align 8
  %16 = load i64, i64* %13, align 8
  %17 = add i64 %15, %16
  %18 = load i64, i64* @max_smi_data_buf_size, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %7, align 8
  br label %43

23:                                               ; preds = %6
  %24 = call i32 @mutex_lock(i32* @smi_data_lock)
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* %13, align 8
  %27 = add i64 %25, %26
  %28 = call i64 @smi_data_buf_realloc(i64 %27)
  store i64 %28, i64* %14, align 8
  %29 = load i64, i64* %14, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %40

32:                                               ; preds = %23
  %33 = load i64, i64* @smi_data_buf, align 8
  %34 = load i64, i64* %12, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i8*, i8** %11, align 8
  %37 = load i64, i64* %13, align 8
  %38 = call i32 @memcpy(i64 %35, i8* %36, i64 %37)
  %39 = load i64, i64* %13, align 8
  store i64 %39, i64* %14, align 8
  br label %40

40:                                               ; preds = %32, %31
  %41 = call i32 @mutex_unlock(i32* @smi_data_lock)
  %42 = load i64, i64* %14, align 8
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %40, %20
  %44 = load i64, i64* %7, align 8
  ret i64 %44
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @smi_data_buf_realloc(i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
