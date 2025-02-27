; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/store/extr_loader_file.c_try_decode_X509CRL.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/store/extr_loader_file.c_try_decode_X509CRL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PEM_STRING_X509_CRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i64, i8**, i32*, i32*, i8*)* @try_decode_X509CRL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @try_decode_X509CRL(i8* %0, i8* %1, i8* %2, i64 %3, i8** %4, i32* %5, i32* %6, i8* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8** %4, i8*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %8
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* @PEM_STRING_X509_CRL, align 4
  %25 = call i64 @strcmp(i8* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32* null, i32** %9, align 8
  br label %46

28:                                               ; preds = %22
  %29 = load i32*, i32** %15, align 8
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %28, %8
  %31 = load i64, i64* %13, align 8
  %32 = call i32* @d2i_X509_CRL(i32* null, i8** %12, i64 %31)
  store i32* %32, i32** %19, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32*, i32** %15, align 8
  store i32 1, i32* %35, align 4
  %36 = load i32*, i32** %19, align 8
  %37 = call i32* @OSSL_STORE_INFO_new_CRL(i32* %36)
  store i32* %37, i32** %18, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32*, i32** %18, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32*, i32** %19, align 8
  %43 = call i32 @X509_CRL_free(i32* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32*, i32** %18, align 8
  store i32* %45, i32** %9, align 8
  br label %46

46:                                               ; preds = %44, %27
  %47 = load i32*, i32** %9, align 8
  ret i32* %47
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @d2i_X509_CRL(i32*, i8**, i64) #1

declare dso_local i32* @OSSL_STORE_INFO_new_CRL(i32*) #1

declare dso_local i32 @X509_CRL_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
