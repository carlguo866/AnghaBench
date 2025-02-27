; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_gcm.c_mbedtls_gcm_crypt_and_tag.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_gcm.c_mbedtls_gcm_crypt_and_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_gcm_crypt_and_tag(i32* %0, i32 %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i8* %8, i64 %9, i8* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32 %1, i32* %14, align 4
  store i64 %2, i64* %15, align 8
  store i8* %3, i8** %16, align 8
  store i64 %4, i64* %17, align 8
  store i8* %5, i8** %18, align 8
  store i64 %6, i64* %19, align 8
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i64 %9, i64* %22, align 8
  store i8* %10, i8** %23, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load i8*, i8** %16, align 8
  %28 = load i64, i64* %17, align 8
  %29 = load i8*, i8** %18, align 8
  %30 = load i64, i64* %19, align 8
  %31 = call i32 @mbedtls_gcm_starts(i32* %25, i32 %26, i8* %27, i64 %28, i8* %29, i64 %30)
  store i32 %31, i32* %24, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %11
  %34 = load i32, i32* %24, align 4
  store i32 %34, i32* %12, align 4
  br label %53

35:                                               ; preds = %11
  %36 = load i32*, i32** %13, align 8
  %37 = load i64, i64* %15, align 8
  %38 = load i8*, i8** %20, align 8
  %39 = load i8*, i8** %21, align 8
  %40 = call i32 @mbedtls_gcm_update(i32* %36, i64 %37, i8* %38, i8* %39)
  store i32 %40, i32* %24, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %24, align 4
  store i32 %43, i32* %12, align 4
  br label %53

44:                                               ; preds = %35
  %45 = load i32*, i32** %13, align 8
  %46 = load i8*, i8** %23, align 8
  %47 = load i64, i64* %22, align 8
  %48 = call i32 @mbedtls_gcm_finish(i32* %45, i8* %46, i64 %47)
  store i32 %48, i32* %24, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %24, align 4
  store i32 %51, i32* %12, align 4
  br label %53

52:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %52, %50, %42, %33
  %54 = load i32, i32* %12, align 4
  ret i32 %54
}

declare dso_local i32 @mbedtls_gcm_starts(i32*, i32, i8*, i64, i8*, i64) #1

declare dso_local i32 @mbedtls_gcm_update(i32*, i64, i8*, i8*) #1

declare dso_local i32 @mbedtls_gcm_finish(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
