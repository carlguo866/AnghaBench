; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_prn.c_RSA_print_fp.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_prn.c_RSA_print_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSA_F_RSA_PRINT_FP = common dso_local global i32 0, align 4
@ERR_R_BUF_LIB = common dso_local global i32 0, align 4
@BIO_NOCLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RSA_print_fp(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i32 (...) @BIO_s_file()
  %11 = call i32* @BIO_new(i32 %10)
  store i32* %11, i32** %8, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @RSA_F_RSA_PRINT_FP, align 4
  %15 = load i32, i32* @ERR_R_BUF_LIB, align 4
  %16 = call i32 @RSAerr(i32 %14, i32 %15)
  store i32 0, i32* %4, align 4
  br label %29

17:                                               ; preds = %3
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @BIO_NOCLOSE, align 4
  %21 = call i32 @BIO_set_fp(i32* %18, i32* %19, i32 %20)
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @RSA_print(i32* %22, i32* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @BIO_free(i32* %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %17, %13
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_file(...) #1

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i32 @BIO_set_fp(i32*, i32*, i32) #1

declare dso_local i32 @RSA_print(i32*, i32*, i32) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
