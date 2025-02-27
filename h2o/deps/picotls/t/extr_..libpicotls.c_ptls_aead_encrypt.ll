; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libpicotls.c_ptls_aead_encrypt.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libpicotls.c_ptls_aead_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ptls_aead_encrypt(i32* %0, i8* %1, i8* %2, i64 %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %12, align 4
  %18 = load i8*, i8** %13, align 8
  %19 = load i64, i64* %14, align 8
  %20 = call i32 @ptls_aead_encrypt_init(i32* %16, i32 %17, i8* %18, i64 %19)
  %21 = load i32*, i32** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = load i64, i64* %15, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i8*, i8** %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i64 @ptls_aead_encrypt_update(i32* %21, i32* %25, i8* %26, i64 %27)
  %29 = load i64, i64* %15, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %15, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i64, i64* %15, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = call i64 @ptls_aead_encrypt_final(i32* %31, i32* %35)
  %37 = load i64, i64* %15, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %15, align 8
  %39 = load i64, i64* %15, align 8
  ret i64 %39
}

declare dso_local i32 @ptls_aead_encrypt_init(i32*, i32, i8*, i64) #1

declare dso_local i64 @ptls_aead_encrypt_update(i32*, i32*, i8*, i64) #1

declare dso_local i64 @ptls_aead_encrypt_final(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
