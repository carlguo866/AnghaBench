; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_derive_k1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_derive_k1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DPP_MAX_HASH_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"first intermediate key\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"DPP: PRK = HKDF-Extract(<>, IKM=M.x)\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"DPP: k1 = HKDF-Expand(PRK, info, L)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i32)* @dpp_derive_k1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_derive_k1(i32* %0, i64 %1, i32* %2, i32 %3) #0 {
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
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @os_memset(i32* %19, i32 0, i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @dpp_hmac(i32 %25, i32* %19, i32 %26, i32* %27, i64 %28, i32* %22)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %52

32:                                               ; preds = %4
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @wpa_hexdump_key(i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32* %22, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i8*, i8** %13, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @dpp_hkdf_expand(i32 %36, i32* %22, i32 %37, i8* %38, i32* %39, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @os_memset(i32* %22, i32 0, i32 %42)
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %52

47:                                               ; preds = %32
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @wpa_hexdump_key(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32* %49, i32 %50)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %52

52:                                               ; preds = %47, %46, %31
  %53 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memset(i32*, i32, i32) #2

declare dso_local i64 @dpp_hmac(i32, i32*, i32, i32*, i64, i32*) #2

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
