; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_dec.c_ASN1_item_ex_d2i.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_dec.c_ASN1_item_ex_d2i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASN1_item_ex_d2i(i32** %0, i8** %1, i64 %2, i32* %3, i32 %4, i32 %5, i8 signext %6, i32* %7) #0 {
  %9 = alloca i32**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32** %0, i32*** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8 %6, i8* %15, align 1
  store i32* %7, i32** %16, align 8
  %18 = load i32**, i32*** %9, align 8
  %19 = load i8**, i8*** %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i8, i8* %15, align 1
  %25 = load i32*, i32** %16, align 8
  %26 = call i32 @asn1_item_embed_d2i(i32** %18, i8** %19, i64 %20, i32* %21, i32 %22, i32 %23, i8 signext %24, i32* %25, i32 0)
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %8
  %30 = load i32**, i32*** %9, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @ASN1_item_ex_free(i32** %30, i32* %31)
  br label %33

33:                                               ; preds = %29, %8
  %34 = load i32, i32* %17, align 4
  ret i32 %34
}

declare dso_local i32 @asn1_item_embed_d2i(i32**, i8**, i64, i32*, i32, i32, i8 signext, i32*, i32) #1

declare dso_local i32 @ASN1_item_ex_free(i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
