; ModuleID = '/home/carl/AnghaBench/openssl/crypto/poly1305/extr_poly1305_ameth.c_poly1305_key_free.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/poly1305/extr_poly1305_ameth.c_poly1305_key_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @poly1305_key_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poly1305_key_free(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.TYPE_4__* @EVP_PKEY_get0(i32* %4)
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @OPENSSL_cleanse(i32* %16, i32 %19)
  br label %21

21:                                               ; preds = %13, %8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = call i32 @ASN1_OCTET_STRING_free(%struct.TYPE_4__* %22)
  br label %24

24:                                               ; preds = %21, %1
  ret void
}

declare dso_local %struct.TYPE_4__* @EVP_PKEY_get0(i32*) #1

declare dso_local i32 @OPENSSL_cleanse(i32*, i32) #1

declare dso_local i32 @ASN1_OCTET_STRING_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
