; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_lib.c_X509V3_EXT_d2i.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_lib.c_X509V3_EXT_d2i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* (i32*, i8**, i32)*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @X509V3_EXT_d2i(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.TYPE_3__* @X509V3_EXT_get(i32* %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %4, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %36

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32* @X509_EXTENSION_get_data(i32* %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i8* @ASN1_STRING_get0_data(i32* %15)
  store i8* %16, i8** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @ASN1_STRING_length(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %12
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @ASN1_ITEM_ptr(i64 %27)
  %29 = call i8* @ASN1_item_d2i(i32* null, i8** %5, i32 %24, i32 %28)
  store i8* %29, i8** %2, align 8
  br label %36

30:                                               ; preds = %12
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8* (i32*, i8**, i32)*, i8* (i32*, i8**, i32)** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i8* %33(i32* null, i8** %5, i32 %34)
  store i8* %35, i8** %2, align 8
  br label %36

36:                                               ; preds = %30, %23, %11
  %37 = load i8*, i8** %2, align 8
  ret i8* %37
}

declare dso_local %struct.TYPE_3__* @X509V3_EXT_get(i32*) #1

declare dso_local i32* @X509_EXTENSION_get_data(i32*) #1

declare dso_local i8* @ASN1_STRING_get0_data(i32*) #1

declare dso_local i32 @ASN1_STRING_length(i32*) #1

declare dso_local i8* @ASN1_item_d2i(i32*, i8**, i32, i32) #1

declare dso_local i32 @ASN1_ITEM_ptr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
