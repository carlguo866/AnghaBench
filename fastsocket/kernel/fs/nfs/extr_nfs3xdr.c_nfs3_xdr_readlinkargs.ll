; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_readlinkargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_readlinkargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rpc_auth* }
%struct.rpc_auth = type { i32 }
%struct.nfs3_readlinkargs = type { i32, i32, i32, i32 }

@RPC_REPHDRSIZE = common dso_local global i32 0, align 4
@NFS3_readlinkres_sz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs3_readlinkargs*)* @nfs3_xdr_readlinkargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_readlinkargs(%struct.rpc_rqst* %0, i32* %1, %struct.nfs3_readlinkargs* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs3_readlinkargs*, align 8
  %7 = alloca %struct.rpc_auth*, align 8
  %8 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfs3_readlinkargs* %2, %struct.nfs3_readlinkargs** %6, align 8
  %9 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %10 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.rpc_auth*, %struct.rpc_auth** %12, align 8
  store %struct.rpc_auth* %13, %struct.rpc_auth** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.nfs3_readlinkargs*, %struct.nfs3_readlinkargs** %6, align 8
  %16 = getelementptr inbounds %struct.nfs3_readlinkargs, %struct.nfs3_readlinkargs* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @xdr_encode_fhandle(i32* %14, i32 %17)
  store i32* %18, i32** %5, align 8
  %19 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %20 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @xdr_adjust_iovec(i32 %21, i32* %22)
  %24 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %25 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @RPC_REPHDRSIZE, align 4
  %27 = load %struct.rpc_auth*, %struct.rpc_auth** %7, align 8
  %28 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = load i32, i32* @NFS3_readlinkres_sz, align 4
  %32 = add nsw i32 %30, %31
  %33 = shl i32 %32, 2
  store i32 %33, i32* %8, align 4
  %34 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %35 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %34, i32 0, i32 0
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.nfs3_readlinkargs*, %struct.nfs3_readlinkargs** %6, align 8
  %38 = getelementptr inbounds %struct.nfs3_readlinkargs, %struct.nfs3_readlinkargs* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nfs3_readlinkargs*, %struct.nfs3_readlinkargs** %6, align 8
  %41 = getelementptr inbounds %struct.nfs3_readlinkargs, %struct.nfs3_readlinkargs* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nfs3_readlinkargs*, %struct.nfs3_readlinkargs** %6, align 8
  %44 = getelementptr inbounds %struct.nfs3_readlinkargs, %struct.nfs3_readlinkargs* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @xdr_inline_pages(i32* %35, i32 %36, i32 %39, i32 %42, i32 %45)
  ret i32 0
}

declare dso_local i32* @xdr_encode_fhandle(i32*, i32) #1

declare dso_local i32 @xdr_adjust_iovec(i32, i32*) #1

declare dso_local i32 @xdr_inline_pages(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
