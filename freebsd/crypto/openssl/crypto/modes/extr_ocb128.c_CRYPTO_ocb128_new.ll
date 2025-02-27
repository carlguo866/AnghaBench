; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_ocb128.c_CRYPTO_ocb128_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_ocb128.c_CRYPTO_ocb128_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CRYPTO_ocb128_new(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = call i32* @OPENSSL_malloc(i32 4)
  store i32* %14, i32** %12, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %5
  %17 = load i32*, i32** %12, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @CRYPTO_ocb128_init(i32* %17, i8* %18, i8* %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32*, i32** %12, align 8
  store i32* %27, i32** %6, align 8
  br label %32

28:                                               ; preds = %16
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @OPENSSL_free(i32* %29)
  br label %31

31:                                               ; preds = %28, %5
  store i32* null, i32** %6, align 8
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32*, i32** %6, align 8
  ret i32* %33
}

declare dso_local i32* @OPENSSL_malloc(i32) #1

declare dso_local i32 @CRYPTO_ocb128_init(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
