; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_derive_k2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_derive_k2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DPP_MAX_HASH_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"second intermediate key\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"DPP: PRK = HKDF-Extract(<>, IKM=N.x)\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"DPP: k2 = HKDF-Expand(PRK, info, L)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i32)* @dpp_derive_k2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_derive_k2(i32* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @DPP_MAX_HASH_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* @DPP_MAX_HASH_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @os_memset(i32* %19, i32 0, i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @dpp_hmac(i32 %25, i32* %19, i32 %26, i32* %27, i64 %28, i32* %22)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %53

33:                                               ; preds = %4
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @wpa_hexdump_key(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32* %22, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @dpp_hkdf_expand(i32 %37, i32* %22, i32 %38, i8* %39, i32* %40, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @os_memset(i32* %22, i32 0, i32 %43)
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %53

48:                                               ; preds = %33
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @wpa_hexdump_key(i32 %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32* %50, i32 %51)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %53

53:                                               ; preds = %48, %47, %32
  %54 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memset(i32*, i32, i32) #2

declare dso_local i32 @dpp_hmac(i32, i32*, i32, i32*, i64, i32*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #2

declare dso_local i32 @dpp_hkdf_expand(i32, i32*, i32, i8*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
