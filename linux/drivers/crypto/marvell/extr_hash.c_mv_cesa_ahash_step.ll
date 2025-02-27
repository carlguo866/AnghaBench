; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_step.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.ahash_request = type { i32 }
%struct.mv_cesa_ahash_req = type { i32 }

@CESA_DMA_REQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*)* @mv_cesa_ahash_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_cesa_ahash_step(%struct.crypto_async_request* %0) #0 {
  %2 = alloca %struct.crypto_async_request*, align 8
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.mv_cesa_ahash_req*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %2, align 8
  %5 = load %struct.crypto_async_request*, %struct.crypto_async_request** %2, align 8
  %6 = call %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request* %5)
  store %struct.ahash_request* %6, %struct.ahash_request** %3, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %8 = call %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.mv_cesa_ahash_req* %8, %struct.mv_cesa_ahash_req** %4, align 8
  %9 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %10 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %9, i32 0, i32 0
  %11 = call i64 @mv_cesa_req_get_type(i32* %10)
  %12 = load i64, i64* @CESA_DMA_REQ, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %16 = call i32 @mv_cesa_ahash_dma_step(%struct.ahash_request* %15)
  br label %20

17:                                               ; preds = %1
  %18 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %19 = call i32 @mv_cesa_ahash_std_step(%struct.ahash_request* %18)
  br label %20

20:                                               ; preds = %17, %14
  ret void
}

declare dso_local %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i64 @mv_cesa_req_get_type(i32*) #1

declare dso_local i32 @mv_cesa_ahash_dma_step(%struct.ahash_request*) #1

declare dso_local i32 @mv_cesa_ahash_std_step(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
