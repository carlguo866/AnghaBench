; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_xdr.c_nlmsvc_encode_res.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_xdr.c_nlmsvc_encode_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nlm_res* }
%struct.nlm_res = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlmsvc_encode_res(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nlm_res*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 0
  %9 = load %struct.nlm_res*, %struct.nlm_res** %8, align 8
  store %struct.nlm_res* %9, %struct.nlm_res** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.nlm_res*, %struct.nlm_res** %6, align 8
  %12 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %11, i32 0, i32 1
  %13 = call i32* @nlm_encode_cookie(i32* %10, i32* %12)
  store i32* %13, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load %struct.nlm_res*, %struct.nlm_res** %6, align 8
  %18 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  %22 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @xdr_ressize_check(%struct.svc_rqst* %22, i32* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %16, %15
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32* @nlm_encode_cookie(i32*, i32*) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
