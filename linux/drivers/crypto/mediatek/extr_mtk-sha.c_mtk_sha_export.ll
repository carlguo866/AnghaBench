; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_export.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.mtk_sha_reqctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i8*)* @mtk_sha_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_sha_export(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mtk_sha_reqctx*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %7 = call %struct.mtk_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %6)
  store %struct.mtk_sha_reqctx* %7, %struct.mtk_sha_reqctx** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %5, align 8
  %10 = call i32 @memcpy(i8* %8, %struct.mtk_sha_reqctx* %9, i32 4)
  ret i32 0
}

declare dso_local %struct.mtk_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @memcpy(i8*, %struct.mtk_sha_reqctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
