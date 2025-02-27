; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_mon.c_xdr_dec_stat_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_mon.c_xdr_dec_stat_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.nsm_res = type { i8*, i8* }
%struct.xdr_stream = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"lockd: xdr_dec_stat_res status %d state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nsm_res*)* @xdr_dec_stat_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdr_dec_stat_res(%struct.rpc_rqst* %0, i32* %1, %struct.nsm_res* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nsm_res*, align 8
  %8 = alloca %struct.xdr_stream, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nsm_res* %2, %struct.nsm_res** %7, align 8
  %9 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %10 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %9, i32 0, i32 0
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @xdr_init_decode(%struct.xdr_stream* %8, i32* %10, i32* %11)
  %13 = call i32* @xdr_inline_decode(%struct.xdr_stream* %8, i32 8)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %41

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %6, align 8
  %25 = load i32, i32* %23, align 4
  %26 = call i8* @ntohl(i32 %25)
  %27 = load %struct.nsm_res*, %struct.nsm_res** %7, align 8
  %28 = getelementptr inbounds %struct.nsm_res, %struct.nsm_res* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @ntohl(i32 %30)
  %32 = load %struct.nsm_res*, %struct.nsm_res** %7, align 8
  %33 = getelementptr inbounds %struct.nsm_res, %struct.nsm_res* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.nsm_res*, %struct.nsm_res** %7, align 8
  %35 = getelementptr inbounds %struct.nsm_res, %struct.nsm_res* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.nsm_res*, %struct.nsm_res** %7, align 8
  %38 = getelementptr inbounds %struct.nsm_res, %struct.nsm_res* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %22, %19
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @xdr_init_decode(%struct.xdr_stream*, i32*, i32*) #1

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @dprintk(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
