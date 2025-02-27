; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_encode_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_encode_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BHND_NVRAM_TYPE_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"unsupported type: %d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"H%[]02hhX\00", align 1
@BHND_NVRAM_TYPE_UINT8_ARRAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i8*, i64*, i64)* @bhnd_nvram_val_encode_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_val_encode_data(i8* %0, i64 %1, i64 %2, i8* %3, i64* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @BHND_NVRAM_TYPE_DATA, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %10, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @BHND_NV_ASSERT(i32 %17, i8* %19)
  %21 = load i64, i64* %13, align 8
  switch i64 %21, label %29 [
    i64 129, label %22
    i64 128, label %22
  ]

22:                                               ; preds = %6, %6
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i32, i32* @BHND_NVRAM_TYPE_UINT8_ARRAY, align 4
  %26 = load i8*, i8** %11, align 8
  %27 = load i64*, i64** %12, align 8
  %28 = call i32 @bhnd_nvram_value_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %23, i64 %24, i32 %25, i8* %26, i64* %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i32 %28, i32* %7, align 4
  br label %37

29:                                               ; preds = %6
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* @BHND_NVRAM_TYPE_UINT8_ARRAY, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = load i64*, i64** %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = call i32 @bhnd_nvram_value_coerce(i8* %30, i64 %31, i32 %32, i8* %33, i64* %34, i64 %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %29, %22
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i32 @bhnd_nvram_value_printf(i8*, i8*, i64, i32, i8*, i64*, i8*) #1

declare dso_local i32 @bhnd_nvram_value_coerce(i8*, i64, i32, i8*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
