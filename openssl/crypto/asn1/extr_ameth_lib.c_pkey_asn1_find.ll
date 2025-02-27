; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_ameth_lib.c_pkey_asn1_find.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_ameth_lib.c_pkey_asn1_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@app_methods = common dso_local global i64 0, align 8
@standard_methods = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32)* @pkey_asn1_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @pkey_asn1_find(i32 %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load i64, i64* @app_methods, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i64, i64* @app_methods, align 8
  %14 = call i32 @sk_EVP_PKEY_ASN1_METHOD_find(i64 %13, %struct.TYPE_7__* %4)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i64, i64* @app_methods, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.TYPE_7__* @sk_EVP_PKEY_ASN1_METHOD_value(i64 %18, i32 %19)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %2, align 8
  br label %37

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i32, i32* @standard_methods, align 4
  %24 = load i32, i32* @standard_methods, align 4
  %25 = call i32 @OSSL_NELEM(i32 %24)
  %26 = call %struct.TYPE_7__** @OBJ_bsearch_ameth(%struct.TYPE_7__** %5, i32 %23, i32 %25)
  store %struct.TYPE_7__** %26, %struct.TYPE_7__*** %6, align 8
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %28 = icmp eq %struct.TYPE_7__** %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = icmp eq %struct.TYPE_7__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %22
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %37

34:                                               ; preds = %29
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %2, align 8
  br label %37

37:                                               ; preds = %34, %33, %17
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %38
}

declare dso_local i32 @sk_EVP_PKEY_ASN1_METHOD_find(i64, %struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @sk_EVP_PKEY_ASN1_METHOD_value(i64, i32) #1

declare dso_local %struct.TYPE_7__** @OBJ_bsearch_ameth(%struct.TYPE_7__**, i32, i32) #1

declare dso_local i32 @OSSL_NELEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
