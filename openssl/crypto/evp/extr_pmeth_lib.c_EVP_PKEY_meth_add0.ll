; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_pmeth_lib.c_EVP_PKEY_meth_add0.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_pmeth_lib.c_EVP_PKEY_meth_add0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@app_pkey_methods = common dso_local global i32* null, align 8
@pmeth_cmp = common dso_local global i32 0, align 4
@EVP_F_EVP_PKEY_METH_ADD0 = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_PKEY_meth_add0(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** @app_pkey_methods, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load i32, i32* @pmeth_cmp, align 4
  %8 = call i32* @sk_EVP_PKEY_METHOD_new(i32 %7)
  store i32* %8, i32** @app_pkey_methods, align 8
  %9 = load i32*, i32** @app_pkey_methods, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load i32, i32* @EVP_F_EVP_PKEY_METH_ADD0, align 4
  %13 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %14 = call i32 @EVPerr(i32 %12, i32 %13)
  store i32 0, i32* %2, align 4
  br label %28

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %15, %1
  %17 = load i32*, i32** @app_pkey_methods, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @sk_EVP_PKEY_METHOD_push(i32* %17, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @EVP_F_EVP_PKEY_METH_ADD0, align 4
  %23 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %24 = call i32 @EVPerr(i32 %22, i32 %23)
  store i32 0, i32* %2, align 4
  br label %28

25:                                               ; preds = %16
  %26 = load i32*, i32** @app_pkey_methods, align 8
  %27 = call i32 @sk_EVP_PKEY_METHOD_sort(i32* %26)
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %21, %11
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32* @sk_EVP_PKEY_METHOD_new(i32) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @sk_EVP_PKEY_METHOD_push(i32*, i32*) #1

declare dso_local i32 @sk_EVP_PKEY_METHOD_sort(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
