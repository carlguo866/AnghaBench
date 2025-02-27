; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_o_str.c_CRYPTO_strndup.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_o_str.c_CRYPTO_strndup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CRYPTO_strndup(i8* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %36

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @OPENSSL_strnlen(i8* %16, i64 %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = add i64 %19, 1
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i8* @CRYPTO_malloc(i64 %20, i8* %21, i32 %22)
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %15
  %27 = load i8*, i8** %11, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @memcpy(i8* %27, i8* %28, i64 %29)
  %31 = load i8*, i8** %11, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %26, %15
  %35 = load i8*, i8** %11, align 8
  store i8* %35, i8** %5, align 8
  br label %36

36:                                               ; preds = %34, %14
  %37 = load i8*, i8** %5, align 8
  ret i8* %37
}

declare dso_local i64 @OPENSSL_strnlen(i8*, i64) #1

declare dso_local i8* @CRYPTO_malloc(i64, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
