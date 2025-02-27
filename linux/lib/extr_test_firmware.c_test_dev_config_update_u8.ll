; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_firmware.c_test_dev_config_update_u8.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_firmware.c_test_dev_config_update_u8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U8_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@test_fw_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64*)* @test_dev_config_update_u8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_dev_config_update_u8(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @kstrtol(i8* %10, i32 10, i64* %9)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %30

16:                                               ; preds = %3
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @U8_MAX, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %30

23:                                               ; preds = %16
  %24 = call i32 @mutex_lock(i32* @test_fw_mutex)
  %25 = load i64, i64* %9, align 8
  %26 = load i64*, i64** %7, align 8
  store i64 %25, i64* %26, align 8
  %27 = call i32 @mutex_unlock(i32* @test_fw_mutex)
  %28 = load i64, i64* %6, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %23, %20, %14
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
