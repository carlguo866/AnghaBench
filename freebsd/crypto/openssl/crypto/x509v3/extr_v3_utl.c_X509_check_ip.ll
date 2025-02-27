; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_utl.c_X509_check_ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_utl.c_X509_check_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GEN_IPADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_check_ip(i32* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 -2, i32* %5, align 4
  br label %20

13:                                               ; preds = %4
  %14 = load i32*, i32** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @GEN_IPADD, align 4
  %19 = call i32 @do_x509_check(i32* %14, i8* %15, i64 %16, i32 %17, i32 %18, i32* null)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %13, %12
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @do_x509_check(i32*, i8*, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
