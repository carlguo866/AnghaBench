; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ahash.c_ahash_op_unaligned_done.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ahash.c_ahash_op_unaligned_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.ahash_request* }
%struct.ahash_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32)* }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @ahash_op_unaligned_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahash_op_unaligned_done(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahash_request*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %7 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %6, i32 0, i32 0
  %8 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  store %struct.ahash_request* %8, %struct.ahash_request** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EINPROGRESS, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %15 = call i32 @ahash_notify_einprogress(%struct.ahash_request* %14)
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ahash_restore_req(%struct.ahash_request* %17, i32 %18)
  %20 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %21 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %22, align 8
  %24 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %25 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %24, i32 0, i32 0
  %26 = load i32, i32* %4, align 4
  %27 = call i32 %23(%struct.TYPE_2__* %25, i32 %26)
  br label %28

28:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @ahash_notify_einprogress(%struct.ahash_request*) #1

declare dso_local i32 @ahash_restore_req(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
