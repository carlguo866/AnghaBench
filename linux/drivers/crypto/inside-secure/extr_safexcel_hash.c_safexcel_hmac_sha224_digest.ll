; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_hmac_sha224_digest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_hmac_sha224_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @safexcel_hmac_sha224_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_hmac_sha224_digest(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %5 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %6 = call i32 @safexcel_hmac_sha224_init(%struct.ahash_request* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %13 = call i32 @safexcel_ahash_finup(%struct.ahash_request* %12)
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %11, %9
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local i32 @safexcel_hmac_sha224_init(%struct.ahash_request*) #1

declare dso_local i32 @safexcel_ahash_finup(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
