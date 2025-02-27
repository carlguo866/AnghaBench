; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@BHND_NVRAM_VAL_STORAGE_DYNAMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvram_val_new(i32** %0, i32* %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = call i32* @bhnd_nv_malloc(i32 4)
  %16 = load i32**, i32*** %8, align 8
  store i32* %15, i32** %16, align 8
  %17 = icmp eq i32* %15, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %7, align 4
  br label %38

20:                                               ; preds = %6
  %21 = load i32**, i32*** %8, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @BHND_NVRAM_VAL_STORAGE_DYNAMIC, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @bhnd_nvram_val_init_common(i32* %22, i32 %23, i32* %24, i8* %25, i64 %26, i32 %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load i32**, i32*** %8, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @bhnd_nvram_val_release(i32* %34)
  br label %36

36:                                               ; preds = %32, %20
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %18
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32* @bhnd_nv_malloc(i32) #1

declare dso_local i32 @bhnd_nvram_val_init_common(i32*, i32, i32*, i8*, i64, i32, i32) #1

declare dso_local i32 @bhnd_nvram_val_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
