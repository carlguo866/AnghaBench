; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher_wrap.c_aes_crypt_ctr_wrap.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher_wrap.c_aes_crypt_ctr_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64*, i8*, i8*, i8*, i8*)* @aes_crypt_ctr_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_crypt_ctr_wrap(i8* %0, i64 %1, i64* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i64, i64* %9, align 8
  %18 = load i64*, i64** %10, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = call i32 @mbedtls_aes_crypt_ctr(i32* %16, i64 %17, i64* %18, i8* %19, i8* %20, i8* %21, i8* %22)
  ret i32 %23
}

declare dso_local i32 @mbedtls_aes_crypt_ctr(i32*, i64, i64*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
