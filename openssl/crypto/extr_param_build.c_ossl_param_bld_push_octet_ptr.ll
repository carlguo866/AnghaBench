; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_param_build.c_ossl_param_bld_push_octet_ptr.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_param_build.c_ossl_param_bld_push_octet_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@INT_MAX = common dso_local global i64 0, align 8
@CRYPTO_F_OSSL_PARAM_BLD_PUSH_OCTET_PTR = common dso_local global i32 0, align 4
@CRYPTO_R_STRING_TOO_LONG = common dso_local global i32 0, align 4
@OSSL_PARAM_OCTET_PTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_param_bld_push_octet_ptr(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* @INT_MAX, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* @CRYPTO_F_OSSL_PARAM_BLD_PUSH_OCTET_PTR, align 4
  %16 = load i32, i32* @CRYPTO_R_STRING_TOO_LONG, align 4
  %17 = call i32 @CRYPTOerr(i32 %15, i32 %16)
  store i32 0, i32* %5, align 4
  br label %31

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @OSSL_PARAM_OCTET_PTR, align 4
  %23 = call %struct.TYPE_3__* @param_push(i32* %19, i8* %20, i64 %21, i32 8, i32 %22, i32 0)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %10, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = icmp eq %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %31

27:                                               ; preds = %18
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %26, %14
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @CRYPTOerr(i32, i32) #1

declare dso_local %struct.TYPE_3__* @param_push(i32*, i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
