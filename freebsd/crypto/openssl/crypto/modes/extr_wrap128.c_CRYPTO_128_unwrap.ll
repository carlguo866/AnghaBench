; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_wrap128.c_CRYPTO_128_unwrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_wrap128.c_CRYPTO_128_unwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_iv = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CRYPTO_128_unwrap(i8* %0, i8* %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca [8 x i8], align 1
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i32, i32* %13, align 4
  %22 = call i64 @crypto_128_unwrap_raw(i8* %16, i8* %17, i8* %18, i8* %19, i64 %20, i32 %21)
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %14, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %42

26:                                               ; preds = %6
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** @default_iv, align 8
  store i8* %30, i8** %9, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %33 = load i8*, i8** %9, align 8
  %34 = call i64 @CRYPTO_memcmp(i8* %32, i8* %33, i32 8)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %14, align 8
  %39 = call i32 @OPENSSL_cleanse(i8* %37, i64 %38)
  store i64 0, i64* %7, align 8
  br label %42

40:                                               ; preds = %31
  %41 = load i64, i64* %14, align 8
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %40, %36, %25
  %43 = load i64, i64* %7, align 8
  ret i64 %43
}

declare dso_local i64 @crypto_128_unwrap_raw(i8*, i8*, i8*, i8*, i64, i32) #1

declare dso_local i64 @CRYPTO_memcmp(i8*, i8*, i32) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
