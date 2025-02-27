; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_krb5kdf.c_krb5kdf_get_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_krb5kdf.c_krb5kdf_get_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@EVP_MAX_KEY_LENGTH = common dso_local global i64 0, align 8
@OSSL_KDF_PARAM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @krb5kdf_get_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krb5kdf_get_ctx_params(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %6, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32* @ossl_prov_cipher_cipher(i32* %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @EVP_CIPHER_key_length(i32* %18)
  store i64 %19, i64* %8, align 8
  br label %22

20:                                               ; preds = %2
  %21 = load i64, i64* @EVP_MAX_KEY_LENGTH, align 8
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @OSSL_KDF_PARAM_SIZE, align 4
  %25 = call i32* @OSSL_PARAM_locate(i32* %23, i32 %24)
  store i32* %25, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32*, i32** %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @OSSL_PARAM_set_size_t(i32* %28, i64 %29)
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %22
  store i32 -2, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32* @ossl_prov_cipher_cipher(i32*) #1

declare dso_local i64 @EVP_CIPHER_key_length(i32*) #1

declare dso_local i32* @OSSL_PARAM_locate(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_size_t(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
