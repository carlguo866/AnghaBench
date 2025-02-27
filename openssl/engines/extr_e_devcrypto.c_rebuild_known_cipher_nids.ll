; ModuleID = '/home/carl/AnghaBench/openssl/engines/extr_e_devcrypto.c_rebuild_known_cipher_nids.c'
source_filename = "/home/carl/AnghaBench/openssl/engines/extr_e_devcrypto.c_rebuild_known_cipher_nids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@known_cipher_nids_amount = common dso_local global i64 0, align 8
@cipher_data = common dso_local global %struct.TYPE_3__* null, align 8
@known_cipher_nids = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @rebuild_known_cipher_nids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rebuild_known_cipher_nids(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* @known_cipher_nids_amount, align 8
  br label %4

4:                                                ; preds = %24, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cipher_data, align 8
  %7 = call i64 @OSSL_NELEM(%struct.TYPE_3__* %6)
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %4
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @devcrypto_test_cipher(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cipher_data, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** @known_cipher_nids, align 8
  %20 = load i64, i64* @known_cipher_nids_amount, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* @known_cipher_nids_amount, align 8
  %22 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 %18, i32* %22, align 4
  br label %23

23:                                               ; preds = %13, %9
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %3, align 8
  br label %4

27:                                               ; preds = %4
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @ENGINE_unregister_ciphers(i32* %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @ENGINE_register_ciphers(i32* %30)
  ret void
}

declare dso_local i64 @OSSL_NELEM(%struct.TYPE_3__*) #1

declare dso_local i64 @devcrypto_test_cipher(i64) #1

declare dso_local i32 @ENGINE_unregister_ciphers(i32*) #1

declare dso_local i32 @ENGINE_register_ciphers(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
