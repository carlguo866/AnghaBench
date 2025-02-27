; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dsa/extr_dsa_prn.c_DSAparams_print_fp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dsa/extr_dsa_prn.c_DSAparams_print_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DSA_F_DSAPARAMS_PRINT_FP = common dso_local global i32 0, align 4
@ERR_R_BUF_LIB = common dso_local global i32 0, align 4
@BIO_NOCLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DSAparams_print_fp(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call i32 (...) @BIO_s_file()
  %9 = call i32* @BIO_new(i32 %8)
  store i32* %9, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @DSA_F_DSAPARAMS_PRINT_FP, align 4
  %13 = load i32, i32* @ERR_R_BUF_LIB, align 4
  %14 = call i32 @DSAerr(i32 %12, i32 %13)
  store i32 0, i32* %3, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @BIO_NOCLOSE, align 4
  %19 = call i32 @BIO_set_fp(i32* %16, i32* %17, i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @DSAparams_print(i32* %20, i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @BIO_free(i32* %23)
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %15, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_file(...) #1

declare dso_local i32 @DSAerr(i32, i32) #1

declare dso_local i32 @BIO_set_fp(i32*, i32*, i32) #1

declare dso_local i32 @DSAparams_print(i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
