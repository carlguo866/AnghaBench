; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs_openargs = type { %struct.TYPE_4__*, i32, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.compound_hdr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs4_xdr_enc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_xdr_enc_open(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs_openargs*, align 8
  %8 = alloca %struct.compound_hdr, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.nfs_openargs*
  store %struct.nfs_openargs* %10, %struct.nfs_openargs** %7, align 8
  %11 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 1
  %13 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %14 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %13, i32 0, i32 5
  %15 = call i32 @nfs4_xdr_minorversion(i32* %14)
  store i32 %15, i32* %12, align 4
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %17 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %18 = call i32 @encode_compound_hdr(%struct.xdr_stream* %16, %struct.rpc_rqst* %17, %struct.compound_hdr* %8)
  %19 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %20 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %21 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %20, i32 0, i32 5
  %22 = call i32 @encode_sequence(%struct.xdr_stream* %19, i32* %21, %struct.compound_hdr* %8)
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %24 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %25 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @encode_putfh(%struct.xdr_stream* %23, i32 %26, %struct.compound_hdr* %8)
  %28 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %29 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %30 = call i32 @encode_open(%struct.xdr_stream* %28, %struct.nfs_openargs* %29, %struct.compound_hdr* %8)
  %31 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %32 = call i32 @encode_getfh(%struct.xdr_stream* %31, %struct.compound_hdr* %8)
  %33 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %34 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %3
  %38 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %39 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %40 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @encode_access(%struct.xdr_stream* %38, i64 %41, %struct.compound_hdr* %8)
  br label %43

43:                                               ; preds = %37, %3
  %44 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %45 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %46 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %49 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @encode_getfattr_open(%struct.xdr_stream* %44, i32 %47, i32 %50, %struct.compound_hdr* %8)
  %52 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %53 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = icmp ne %struct.TYPE_4__* %54, null
  br i1 %55, label %56, label %78

56:                                               ; preds = %43
  %57 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %58 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %59 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = call i32 @encode_layoutget(%struct.xdr_stream* %57, %struct.TYPE_4__* %60, %struct.compound_hdr* %8)
  %62 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %63 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %64 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %70 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @rpc_prepare_reply_pages(%struct.rpc_rqst* %62, i32 %68, i32 0, i32 %74, i32 %76)
  br label %78

78:                                               ; preds = %56, %43
  %79 = call i32 @encode_nops(%struct.compound_hdr* %8)
  ret void
}

declare dso_local i32 @nfs4_xdr_minorversion(i32*) #1

declare dso_local i32 @encode_compound_hdr(%struct.xdr_stream*, %struct.rpc_rqst*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_sequence(%struct.xdr_stream*, i32*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_putfh(%struct.xdr_stream*, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_open(%struct.xdr_stream*, %struct.nfs_openargs*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_getfh(%struct.xdr_stream*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_access(%struct.xdr_stream*, i64, %struct.compound_hdr*) #1

declare dso_local i32 @encode_getfattr_open(%struct.xdr_stream*, i32, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_layoutget(%struct.xdr_stream*, %struct.TYPE_4__*, %struct.compound_hdr*) #1

declare dso_local i32 @rpc_prepare_reply_pages(%struct.rpc_rqst*, i32, i32, i32, i32) #1

declare dso_local i32 @encode_nops(%struct.compound_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
