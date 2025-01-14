; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c_rpcb_getmaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c_rpcb_getmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }
%struct.netconfig = type { i32 }

@RPCBPROC_DUMP = common dso_local global i64 0, align 8
@xdr_void = common dso_local global i64 0, align 8
@xdr_rpcblist_ptr = common dso_local global i64 0, align 8
@tottimeout = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@RPC_PROGVERSMISMATCH = common dso_local global i32 0, align 4
@RPC_PROGUNAVAIL = common dso_local global i32 0, align 4
@RPC_RPCBFAILURE = common dso_local global i8* null, align 8
@rpc_createerr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CLGET_VERS = common dso_local global i32 0, align 4
@RPCBVERS4 = common dso_local global i64 0, align 8
@RPCBVERS = common dso_local global i64 0, align 8
@CLSET_VERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @rpcb_getmaps(%struct.netconfig* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.netconfig*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.netconfig* %0, %struct.netconfig** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  store i64 0, i64* %9, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.netconfig*, %struct.netconfig** %4, align 8
  %12 = call i32* @getclnthandle(i8* %10, %struct.netconfig* %11, i32* null)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  store i32* %16, i32** %3, align 8
  br label %80

17:                                               ; preds = %2
  %18 = load i32*, i32** %7, align 8
  %19 = load i64, i64* @RPCBPROC_DUMP, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i64, i64* @xdr_void, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i64, i64* @xdr_rpcblist_ptr, align 8
  %24 = trunc i64 %23 to i32
  %25 = bitcast i32** %6 to i8*
  %26 = load i32, i32* @tottimeout, align 4
  %27 = call i32 @CLNT_CALL(i32* %18, i32 %20, i32 %22, i32* null, i32 %24, i8* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @RPC_SUCCESS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %76

32:                                               ; preds = %17
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @RPC_PROGVERSMISMATCH, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @RPC_PROGUNAVAIL, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i8*, i8** @RPC_RPCBFAILURE, align 8
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 1), align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @clnt_geterr(i32* %42, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0))
  br label %76

44:                                               ; preds = %36, %32
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @CLGET_VERS, align 4
  %47 = bitcast i64* %9 to i8*
  %48 = call i32 @CLNT_CONTROL(i32* %45, i32 %46, i8* %47)
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @RPCBVERS4, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %44
  %53 = load i64, i64* @RPCBVERS, align 8
  store i64 %53, i64* %9, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @CLSET_VERS, align 4
  %56 = bitcast i64* %9 to i8*
  %57 = call i32 @CLNT_CONTROL(i32* %54, i32 %55, i8* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load i64, i64* @RPCBPROC_DUMP, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i64, i64* @xdr_void, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i64, i64* @xdr_rpcblist_ptr, align 8
  %64 = trunc i64 %63 to i32
  %65 = bitcast i32** %6 to i8*
  %66 = load i32, i32* @tottimeout, align 4
  %67 = call i32 @CLNT_CALL(i32* %58, i32 %60, i32 %62, i32* null, i32 %64, i8* %65, i32 %66)
  %68 = load i32, i32* @RPC_SUCCESS, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %52
  br label %76

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71, %44
  %73 = load i8*, i8** @RPC_RPCBFAILURE, align 8
  store i8* %73, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 1), align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @clnt_geterr(i32* %74, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpc_createerr, i32 0, i32 0))
  br label %76

76:                                               ; preds = %72, %70, %40, %31
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @CLNT_DESTROY(i32* %77)
  %79 = load i32*, i32** %6, align 8
  store i32* %79, i32** %3, align 8
  br label %80

80:                                               ; preds = %76, %15
  %81 = load i32*, i32** %3, align 8
  ret i32* %81
}

declare dso_local i32* @getclnthandle(i8*, %struct.netconfig*, i32*) #1

declare dso_local i32 @CLNT_CALL(i32*, i32, i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @clnt_geterr(i32*, i32*) #1

declare dso_local i32 @CLNT_CONTROL(i32*, i32, i8*) #1

declare dso_local i32 @CLNT_DESTROY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
