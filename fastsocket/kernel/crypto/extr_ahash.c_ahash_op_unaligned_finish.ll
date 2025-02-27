; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ahash.c_ahash_op_unaligned_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ahash.c_ahash_op_unaligned_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, %struct.ahash_request_priv* }
%struct.ahash_request_priv = type { i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*, i32)* @ahash_op_unaligned_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahash_op_unaligned_finish(%struct.ahash_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahash_request_priv*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %7 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %6, i32 0, i32 1
  %8 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %7, align 8
  store %struct.ahash_request_priv* %8, %struct.ahash_request_priv** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EINPROGRESS, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %31

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %14
  %18 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %5, align 8
  %19 = getelementptr inbounds %struct.ahash_request_priv, %struct.ahash_request_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %22 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %25 = call i32 @crypto_ahash_reqtfm(%struct.ahash_request* %24)
  %26 = call i32 @crypto_ahash_digestsize(i32 %25)
  %27 = call i32 @memcpy(i32 %20, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %17, %14
  %29 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %5, align 8
  %30 = call i32 @kzfree(%struct.ahash_request_priv* %29)
  br label %31

31:                                               ; preds = %28, %13
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @crypto_ahash_digestsize(i32) #1

declare dso_local i32 @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local i32 @kzfree(%struct.ahash_request_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
