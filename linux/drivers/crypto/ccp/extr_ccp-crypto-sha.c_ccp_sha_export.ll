; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-sha.c_ccp_sha_export.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-sha.c_ccp_sha_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.ccp_sha_req_ctx = type { %struct.ccp_sha_exp_ctx*, i32, %struct.ccp_sha_exp_ctx*, i32, i32, i32 }
%struct.ccp_sha_exp_ctx = type { i8*, i8*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i8*)* @ccp_sha_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_sha_export(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ccp_sha_req_ctx*, align 8
  %6 = alloca %struct.ccp_sha_exp_ctx, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %8 = call %struct.ccp_sha_req_ctx* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.ccp_sha_req_ctx* %8, %struct.ccp_sha_req_ctx** %5, align 8
  %9 = call i32 @memset(%struct.ccp_sha_exp_ctx* %6, i32 0, i32 32)
  %10 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.ccp_sha_exp_ctx, %struct.ccp_sha_exp_ctx* %6, i32 0, i32 5
  store i32 %12, i32* %13, align 4
  %14 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.ccp_sha_exp_ctx, %struct.ccp_sha_exp_ctx* %6, i32 0, i32 4
  store i32 %16, i32* %17, align 8
  %18 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.ccp_sha_exp_ctx, %struct.ccp_sha_exp_ctx* %6, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.ccp_sha_exp_ctx, %struct.ccp_sha_exp_ctx* %6, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %24, i32 0, i32 2
  %26 = load %struct.ccp_sha_exp_ctx*, %struct.ccp_sha_exp_ctx** %25, align 8
  %27 = call i32 @memcpy(i8* %23, %struct.ccp_sha_exp_ctx* %26, i32 8)
  %28 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.ccp_sha_exp_ctx, %struct.ccp_sha_exp_ctx* %6, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.ccp_sha_exp_ctx, %struct.ccp_sha_exp_ctx* %6, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.ccp_sha_req_ctx*, %struct.ccp_sha_req_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.ccp_sha_req_ctx, %struct.ccp_sha_req_ctx* %34, i32 0, i32 0
  %36 = load %struct.ccp_sha_exp_ctx*, %struct.ccp_sha_exp_ctx** %35, align 8
  %37 = call i32 @memcpy(i8* %33, %struct.ccp_sha_exp_ctx* %36, i32 8)
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @memcpy(i8* %38, %struct.ccp_sha_exp_ctx* %6, i32 32)
  ret i32 0
}

declare dso_local %struct.ccp_sha_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @memset(%struct.ccp_sha_exp_ctx*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.ccp_sha_exp_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
