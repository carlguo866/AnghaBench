; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr4.c_nlm4clt_decode_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr4.c_nlm4clt_decode_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.nlm_res = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nlm_res*)* @nlm4clt_decode_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm4clt_decode_res(%struct.rpc_rqst* %0, i32* %1, %struct.nlm_res* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nlm_res*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nlm_res* %2, %struct.nlm_res** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %10 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %9, i32 0, i32 1
  %11 = call i32* @nlm4_decode_cookie(i32* %8, i32* %10)
  store i32* %11, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %22

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %6, align 8
  %19 = load i32, i32* %17, align 4
  %20 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %21 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %16, %13
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32* @nlm4_decode_cookie(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
