; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_check_mech_param.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_check_mech_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32* }

@B_TRUE = common dso_local global i64 0, align 8
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@AES_BLOCK_LEN = common dso_local global i64 0, align 8
@CRYPTO_MECHANISM_INVALID = common dso_local global i32 0, align 4
@CRYPTO_MECHANISM_PARAM_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32**, i32)* @aes_check_mech_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_check_mech_param(%struct.TYPE_3__* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8* (i32)*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %13 = load i64, i64* @B_TRUE, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %26 [
    i32 130, label %18
    i32 133, label %20
    i32 131, label %22
    i32 132, label %23
    i32 129, label %24
    i32 128, label %25
  ]

18:                                               ; preds = %3
  %19 = load i64, i64* @B_FALSE, align 8
  store i64 %19, i64* %9, align 8
  store i8* (i32)* @ecb_alloc_ctx, i8* (i32)** %11, align 8
  br label %29

20:                                               ; preds = %3
  %21 = load i64, i64* @AES_BLOCK_LEN, align 8
  store i64 %21, i64* %10, align 8
  store i8* (i32)* @cbc_alloc_ctx, i8* (i32)** %11, align 8
  br label %29

22:                                               ; preds = %3
  store i64 4, i64* %10, align 8
  store i8* (i32)* @ctr_alloc_ctx, i8* (i32)** %11, align 8
  br label %29

23:                                               ; preds = %3
  store i64 4, i64* %10, align 8
  store i8* (i32)* @ccm_alloc_ctx, i8* (i32)** %11, align 8
  br label %29

24:                                               ; preds = %3
  store i64 4, i64* %10, align 8
  store i8* (i32)* @gcm_alloc_ctx, i8* (i32)** %11, align 8
  br label %29

25:                                               ; preds = %3
  store i64 4, i64* %10, align 8
  store i8* (i32)* @gmac_alloc_ctx, i8* (i32)** %11, align 8
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @CRYPTO_MECHANISM_INVALID, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %4, align 4
  br label %57

29:                                               ; preds = %25, %24, %23, %22, %20, %18
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @CRYPTO_MECHANISM_PARAM_INVALID, align 4
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %43, %37, %32, %29
  %46 = load i32**, i32*** %6, align 8
  %47 = icmp ne i32** %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i8* (i32)*, i8* (i32)** %11, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i8* %49(i32 %50)
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = load i32**, i32*** %6, align 8
  store i32* %53, i32** %54, align 8
  br label %55

55:                                               ; preds = %48, %45
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %26
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i8* @ecb_alloc_ctx(i32) #1

declare dso_local i8* @cbc_alloc_ctx(i32) #1

declare dso_local i8* @ctr_alloc_ctx(i32) #1

declare dso_local i8* @ccm_alloc_ctx(i32) #1

declare dso_local i8* @gcm_alloc_ctx(i32) #1

declare dso_local i8* @gmac_alloc_ctx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
