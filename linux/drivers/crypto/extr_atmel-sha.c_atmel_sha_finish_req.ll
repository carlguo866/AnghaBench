; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_finish_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_finish_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.atmel_sha_reqctx = type { i32, %struct.atmel_sha_dev* }
%struct.atmel_sha_dev = type { i32 }

@SHA_FLAGS_FINAL = common dso_local global i32 0, align 4
@SHA_FLAGS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*, i32)* @atmel_sha_finish_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_sha_finish_req(%struct.ahash_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_sha_reqctx*, align 8
  %6 = alloca %struct.atmel_sha_dev*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %8 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.atmel_sha_reqctx* %8, %struct.atmel_sha_reqctx** %5, align 8
  %9 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %5, align 8
  %10 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %9, i32 0, i32 1
  %11 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %10, align 8
  store %struct.atmel_sha_dev* %11, %struct.atmel_sha_dev** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %2
  %15 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %16 = call i32 @atmel_sha_copy_hash(%struct.ahash_request* %15)
  %17 = load i32, i32* @SHA_FLAGS_FINAL, align 4
  %18 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %19 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %25 = call i32 @atmel_sha_finish(%struct.ahash_request* %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %14
  br label %33

27:                                               ; preds = %2
  %28 = load i32, i32* @SHA_FLAGS_ERROR, align 4
  %29 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %5, align 8
  %30 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %27, %26
  %34 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @atmel_sha_complete(%struct.atmel_sha_dev* %34, i32 %35)
  ret void
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @atmel_sha_copy_hash(%struct.ahash_request*) #1

declare dso_local i32 @atmel_sha_finish(%struct.ahash_request*) #1

declare dso_local i32 @atmel_sha_complete(%struct.atmel_sha_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
