; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_dec_readlink3res.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_dec_readlink3res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }

@NFS3_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs3_xdr_dec_readlink3res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_dec_readlink3res(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca %struct.xdr_stream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %11 = call i32 @decode_nfsstat3(%struct.xdr_stream* %10, i32* %8)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %34

16:                                               ; preds = %3
  %17 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %20 = call i32 @rpc_rqst_userns(%struct.rpc_rqst* %19)
  %21 = call i32 @decode_post_op_attr(%struct.xdr_stream* %17, i8* %18, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %34

26:                                               ; preds = %16
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @NFS3_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %36

31:                                               ; preds = %26
  %32 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %33 = call i32 @decode_nfspath3(%struct.xdr_stream* %32)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %31, %25, %15
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @nfs3_stat_to_errno(i32 %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %34
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @decode_nfsstat3(%struct.xdr_stream*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @decode_post_op_attr(%struct.xdr_stream*, i8*, i32) #1

declare dso_local i32 @rpc_rqst_userns(%struct.rpc_rqst*) #1

declare dso_local i32 @decode_nfspath3(%struct.xdr_stream*) #1

declare dso_local i32 @nfs3_stat_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
