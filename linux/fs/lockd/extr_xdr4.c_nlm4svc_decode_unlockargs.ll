; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_xdr4.c_nlm4svc_decode_unlockargs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_xdr4.c_nlm4svc_decode_unlockargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nlm_args* }
%struct.nlm_args = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@F_UNLCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm4svc_decode_unlockargs(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nlm_args*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 0
  %9 = load %struct.nlm_args*, %struct.nlm_args** %8, align 8
  store %struct.nlm_args* %9, %struct.nlm_args** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %12 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %11, i32 0, i32 1
  %13 = call i32* @nlm4_decode_cookie(i32* %10, i32* %12)
  store i32* %13, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %18 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %17, i32 0, i32 0
  %19 = call i32* @nlm4_decode_lock(i32* %16, %struct.TYPE_4__* %18)
  store i32* %19, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %31

22:                                               ; preds = %15
  %23 = load i32, i32* @F_UNLCK, align 4
  %24 = load %struct.nlm_args*, %struct.nlm_args** %6, align 8
  %25 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @xdr_argsize_check(%struct.svc_rqst* %28, i32* %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %22, %21
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32* @nlm4_decode_cookie(i32*, i32*) #1

declare dso_local i32* @nlm4_decode_lock(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
