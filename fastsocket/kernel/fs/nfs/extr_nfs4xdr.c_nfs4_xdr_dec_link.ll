; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.nfs4_link_res = type { i32, i32, i32, i32 }
%struct.xdr_stream = type { i32 }
%struct.compound_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs4_link_res*)* @nfs4_xdr_dec_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_xdr_dec_link(%struct.rpc_rqst* %0, i32* %1, %struct.nfs4_link_res* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs4_link_res*, align 8
  %7 = alloca %struct.xdr_stream, align 4
  %8 = alloca %struct.compound_hdr, align 4
  %9 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfs4_link_res* %2, %struct.nfs4_link_res** %6, align 8
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %11 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %10, i32 0, i32 0
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @xdr_init_decode(%struct.xdr_stream* %7, i32* %11, i32* %12)
  %14 = call i32 @decode_compound_hdr(%struct.xdr_stream* %7, %struct.compound_hdr* %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %57

18:                                               ; preds = %3
  %19 = load %struct.nfs4_link_res*, %struct.nfs4_link_res** %6, align 8
  %20 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %19, i32 0, i32 3
  %21 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %22 = call i32 @decode_sequence(%struct.xdr_stream* %7, i32* %20, %struct.rpc_rqst* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %57

26:                                               ; preds = %18
  %27 = call i32 @decode_putfh(%struct.xdr_stream* %7)
  store i32 %27, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %57

30:                                               ; preds = %26
  %31 = call i32 @decode_savefh(%struct.xdr_stream* %7)
  store i32 %31, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %57

34:                                               ; preds = %30
  %35 = call i32 @decode_putfh(%struct.xdr_stream* %7)
  store i32 %35, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %57

38:                                               ; preds = %34
  %39 = load %struct.nfs4_link_res*, %struct.nfs4_link_res** %6, align 8
  %40 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %39, i32 0, i32 2
  %41 = call i32 @decode_link(%struct.xdr_stream* %7, i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %57

44:                                               ; preds = %38
  %45 = call i32 @decode_restorefh(%struct.xdr_stream* %7)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %57

49:                                               ; preds = %44
  %50 = load %struct.nfs4_link_res*, %struct.nfs4_link_res** %6, align 8
  %51 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nfs4_link_res*, %struct.nfs4_link_res** %6, align 8
  %54 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @decode_getfattr(%struct.xdr_stream* %7, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %49, %48, %43, %37, %33, %29, %25, %17
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i32 @xdr_init_decode(%struct.xdr_stream*, i32*, i32*) #1

declare dso_local i32 @decode_compound_hdr(%struct.xdr_stream*, %struct.compound_hdr*) #1

declare dso_local i32 @decode_sequence(%struct.xdr_stream*, i32*, %struct.rpc_rqst*) #1

declare dso_local i32 @decode_putfh(%struct.xdr_stream*) #1

declare dso_local i32 @decode_savefh(%struct.xdr_stream*) #1

declare dso_local i32 @decode_link(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @decode_restorefh(%struct.xdr_stream*) #1

declare dso_local i32 @decode_getfattr(%struct.xdr_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
