; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_unwrap_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_rpcauth_unwrap_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.rpc_cred* }
%struct.rpc_cred = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}*, i32 }

@.str = private unnamed_addr constant [46 x i8] c"RPC: %5u using %s cred %p to unwrap rpc data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcauth_unwrap_resp(%struct.rpc_task* %0, i32 (i8*, i32*, i8*)* %1, i8* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpc_task*, align 8
  %8 = alloca i32 (i8*, i32*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.rpc_cred*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %7, align 8
  store i32 (i8*, i32*, i8*)* %1, i32 (i8*, i32*, i8*)** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %14 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.rpc_cred*, %struct.rpc_cred** %16, align 8
  store %struct.rpc_cred* %17, %struct.rpc_cred** %12, align 8
  %18 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %19 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.rpc_cred*, %struct.rpc_cred** %12, align 8
  %22 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.rpc_cred*, %struct.rpc_cred** %12, align 8
  %27 = call i32 @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %25, %struct.rpc_cred* %26)
  %28 = load %struct.rpc_cred*, %struct.rpc_cred** %12, align 8
  %29 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.rpc_task*, i32 (i8*, i32*, i8*)*, i8*, i32*, i8*)**
  %33 = load i32 (%struct.rpc_task*, i32 (i8*, i32*, i8*)*, i8*, i32*, i8*)*, i32 (%struct.rpc_task*, i32 (i8*, i32*, i8*)*, i8*, i32*, i8*)** %32, align 8
  %34 = icmp ne i32 (%struct.rpc_task*, i32 (i8*, i32*, i8*)*, i8*, i32*, i8*)* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %5
  %36 = load %struct.rpc_cred*, %struct.rpc_cred** %12, align 8
  %37 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = bitcast {}** %39 to i32 (%struct.rpc_task*, i32 (i8*, i32*, i8*)*, i8*, i32*, i8*)**
  %41 = load i32 (%struct.rpc_task*, i32 (i8*, i32*, i8*)*, i8*, i32*, i8*)*, i32 (%struct.rpc_task*, i32 (i8*, i32*, i8*)*, i8*, i32*, i8*)** %40, align 8
  %42 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %43 = load i32 (i8*, i32*, i8*)*, i32 (i8*, i32*, i8*)** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 %41(%struct.rpc_task* %42, i32 (i8*, i32*, i8*)* %43, i8* %44, i32* %45, i8* %46)
  store i32 %47, i32* %6, align 4
  br label %54

48:                                               ; preds = %5
  %49 = load i32 (i8*, i32*, i8*)*, i32 (i8*, i32*, i8*)** %8, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 %49(i8* %50, i32* %51, i8* %52)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %48, %35
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @dprintk(i8*, i32, i32, %struct.rpc_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
