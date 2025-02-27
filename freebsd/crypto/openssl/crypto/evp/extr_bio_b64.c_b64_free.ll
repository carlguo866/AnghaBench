; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_bio_b64.c_b64_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_bio_b64.c_b64_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @b64_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b64_free(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.TYPE_4__* @BIO_get_data(i32* %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %25

14:                                               ; preds = %8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @EVP_ENCODE_CTX_free(i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = call i32 @OPENSSL_free(%struct.TYPE_4__* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @BIO_set_data(i32* %21, i32* null)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @BIO_set_init(i32* %23, i32 0)
  store i32 1, i32* %2, align 4
  br label %25

25:                                               ; preds = %14, %13, %7
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.TYPE_4__* @BIO_get_data(i32*) #1

declare dso_local i32 @EVP_ENCODE_CTX_free(i32) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_4__*) #1

declare dso_local i32 @BIO_set_data(i32*, i32*) #1

declare dso_local i32 @BIO_set_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
