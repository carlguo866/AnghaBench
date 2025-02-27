; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_mount_clnt.c_mnt_dec_mountres3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_mount_clnt.c_mnt_dec_mountres3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.mountres = type { i64 }
%struct.xdr_stream = type { i32 }

@EBADHANDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.mountres*)* @mnt_dec_mountres3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mnt_dec_mountres3(%struct.rpc_rqst* %0, i32* %1, %struct.mountres* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mountres*, align 8
  %8 = alloca %struct.xdr_stream, align 4
  %9 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.mountres* %2, %struct.mountres** %7, align 8
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %11 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %10, i32 0, i32 0
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @xdr_init_decode(%struct.xdr_stream* %8, i32* %11, i32* %12)
  %14 = load %struct.mountres*, %struct.mountres** %7, align 8
  %15 = call i32 @decode_fhs_status(%struct.xdr_stream* %8, %struct.mountres* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.mountres*, %struct.mountres** %7, align 8
  %20 = getelementptr inbounds %struct.mountres, %struct.mountres* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %3
  %24 = phi i1 [ true, %3 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %46

30:                                               ; preds = %23
  %31 = load %struct.mountres*, %struct.mountres** %7, align 8
  %32 = call i32 @decode_fhandle3(%struct.xdr_stream* %8, %struct.mountres* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load i64, i64* @EBADHANDLE, align 8
  %40 = sub nsw i64 0, %39
  %41 = load %struct.mountres*, %struct.mountres** %7, align 8
  %42 = getelementptr inbounds %struct.mountres, %struct.mountres* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  store i32 0, i32* %4, align 4
  br label %46

43:                                               ; preds = %30
  %44 = load %struct.mountres*, %struct.mountres** %7, align 8
  %45 = call i32 @decode_auth_flavors(%struct.xdr_stream* %8, %struct.mountres* %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %38, %28
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @xdr_init_decode(%struct.xdr_stream*, i32*, i32*) #1

declare dso_local i32 @decode_fhs_status(%struct.xdr_stream*, %struct.mountres*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @decode_fhandle3(%struct.xdr_stream*, %struct.mountres*) #1

declare dso_local i32 @decode_auth_flavors(%struct.xdr_stream*, %struct.mountres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
