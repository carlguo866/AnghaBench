; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_callback_xdr.c_decode_getattr_args.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_callback_xdr.c_decode_getattr_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.cb_getattrargs = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.xdr_stream*, i8*)* @decode_getattr_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decode_getattr_args(%struct.svc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.xdr_stream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cb_getattrargs*, align 8
  %9 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.cb_getattrargs*
  store %struct.cb_getattrargs* %11, %struct.cb_getattrargs** %8, align 8
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %13 = load %struct.cb_getattrargs*, %struct.cb_getattrargs** %8, align 8
  %14 = getelementptr inbounds %struct.cb_getattrargs, %struct.cb_getattrargs* %13, i32 0, i32 1
  %15 = call i64 @decode_fh(%struct.xdr_stream* %12, i32* %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %4, align 8
  br label %29

23:                                               ; preds = %3
  %24 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %25 = load %struct.cb_getattrargs*, %struct.cb_getattrargs** %8, align 8
  %26 = getelementptr inbounds %struct.cb_getattrargs, %struct.cb_getattrargs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @decode_bitmap(%struct.xdr_stream* %24, i32 %27)
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %23, %21
  %30 = load i64, i64* %4, align 8
  ret i64 %30
}

declare dso_local i64 @decode_fh(%struct.xdr_stream*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @decode_bitmap(%struct.xdr_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
