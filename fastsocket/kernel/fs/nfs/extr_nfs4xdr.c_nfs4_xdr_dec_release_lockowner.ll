; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_release_lockowner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_release_lockowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.compound_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, i8*)* @nfs4_xdr_dec_release_lockowner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_xdr_dec_release_lockowner(%struct.rpc_rqst* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xdr_stream, align 4
  %8 = alloca %struct.compound_hdr, align 4
  %9 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %11 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %10, i32 0, i32 0
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @xdr_init_decode(%struct.xdr_stream* %7, i32* %11, i32* %12)
  %14 = call i32 @decode_compound_hdr(%struct.xdr_stream* %7, %struct.compound_hdr* %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = call i32 @decode_release_lockowner(%struct.xdr_stream* %7)
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i32, i32* %9, align 4
  ret i32 %20
}

declare dso_local i32 @xdr_init_decode(%struct.xdr_stream*, i32*, i32*) #1

declare dso_local i32 @decode_compound_hdr(%struct.xdr_stream*, %struct.compound_hdr*) #1

declare dso_local i32 @decode_release_lockowner(%struct.xdr_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
