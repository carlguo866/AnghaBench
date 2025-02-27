; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_strex.c_X509_NAME_print_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_strex.c_X509_NAME_print_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XN_FLAG_COMPAT = common dso_local global i64 0, align 8
@send_bio_chars = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_NAME_print_ex(i32* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @XN_FLAG_COMPAT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @X509_NAME_print(i32* %14, i32* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  br label %25

18:                                               ; preds = %4
  %19 = load i32, i32* @send_bio_chars, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @do_name_ex(i32 %19, i32* %20, i32* %21, i32 %22, i64 %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %18, %13
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @X509_NAME_print(i32*, i32*, i32) #1

declare dso_local i32 @do_name_ex(i32, i32*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
