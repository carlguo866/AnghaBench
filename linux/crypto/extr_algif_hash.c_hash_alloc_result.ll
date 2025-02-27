; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algif_hash.c_hash_alloc_result.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algif_hash.c_hash_alloc_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hash_ctx = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hash_ctx*)* @hash_alloc_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_alloc_result(%struct.sock* %0, %struct.hash_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.hash_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.hash_ctx* %1, %struct.hash_ctx** %5, align 8
  %7 = load %struct.hash_ctx*, %struct.hash_ctx** %5, align 8
  %8 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

12:                                               ; preds = %2
  %13 = load %struct.hash_ctx*, %struct.hash_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %13, i32 0, i32 1
  %15 = call i32 @crypto_ahash_reqtfm(i32* %14)
  %16 = call i32 @crypto_ahash_digestsize(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i64 @sock_kmalloc(%struct.sock* %17, i32 %18, i32 %19)
  %21 = load %struct.hash_ctx*, %struct.hash_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.hash_ctx*, %struct.hash_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %12
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %36

30:                                               ; preds = %12
  %31 = load %struct.hash_ctx*, %struct.hash_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @memset(i64 %33, i32 0, i32 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %30, %27, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @crypto_ahash_digestsize(i32) #1

declare dso_local i32 @crypto_ahash_reqtfm(i32*) #1

declare dso_local i64 @sock_kmalloc(%struct.sock*, i32, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
