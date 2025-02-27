; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_provider_core.c_provider_store_free.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_provider_core.c_provider_store_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.provider_store_st = type { i32, i32 }

@ossl_provider_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @provider_store_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @provider_store_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.provider_store_st*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.provider_store_st*
  store %struct.provider_store_st* %5, %struct.provider_store_st** %3, align 8
  %6 = load %struct.provider_store_st*, %struct.provider_store_st** %3, align 8
  %7 = icmp eq %struct.provider_store_st* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %21

9:                                                ; preds = %1
  %10 = load %struct.provider_store_st*, %struct.provider_store_st** %3, align 8
  %11 = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ossl_provider_free, align 4
  %14 = call i32 @sk_OSSL_PROVIDER_pop_free(i32 %12, i32 %13)
  %15 = load %struct.provider_store_st*, %struct.provider_store_st** %3, align 8
  %16 = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CRYPTO_THREAD_lock_free(i32 %17)
  %19 = load %struct.provider_store_st*, %struct.provider_store_st** %3, align 8
  %20 = call i32 @OPENSSL_free(%struct.provider_store_st* %19)
  br label %21

21:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @sk_OSSL_PROVIDER_pop_free(i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_lock_free(i32) #1

declare dso_local i32 @OPENSSL_free(%struct.provider_store_st*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
