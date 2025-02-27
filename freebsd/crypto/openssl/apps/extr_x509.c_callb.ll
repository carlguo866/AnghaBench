; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_x509.c_callb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_x509.c_callb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"error with certificate to be certified - should be self signed\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"error with certificate - error %d at depth %d\0A%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @callb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @callb(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @X509_STORE_CTX_get_error(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @X509_V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @bio_err, align 4
  %19 = call i32 (i32, i8*, ...) @BIO_printf(i32 %18, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %34

20:                                               ; preds = %14
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @X509_STORE_CTX_get_current_cert(i32* %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32, i32* @bio_err, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @X509_get_subject_name(i32* %24)
  %26 = call i32 @print_name(i32 %23, i32* null, i32 %25, i32 0)
  %27 = load i32, i32* @bio_err, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @X509_STORE_CTX_get_error_depth(i32* %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @X509_verify_cert_error_string(i32 %31)
  %33 = call i32 (i32, i8*, ...) @BIO_printf(i32 %27, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %30, i32 %32)
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %20, %17, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @X509_STORE_CTX_get_error(i32*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32* @X509_STORE_CTX_get_current_cert(i32*) #1

declare dso_local i32 @print_name(i32, i32*, i32, i32) #1

declare dso_local i32 @X509_get_subject_name(i32*) #1

declare dso_local i32 @X509_STORE_CTX_get_error_depth(i32*) #1

declare dso_local i32 @X509_verify_cert_error_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
