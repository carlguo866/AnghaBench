; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_mount_clnt.c_encode_mntdirpath.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_mount_clnt.c_encode_mntdirpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }

@MNTPATHLEN = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, i8*)* @encode_mntdirpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_mntdirpath(%struct.xdr_stream* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strlen(i8* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @MNTPATHLEN, align 8
  %12 = icmp sgt i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %37

19:                                               ; preds = %2
  %20 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add i64 8, %21
  %23 = call i32* @xdr_reserve_space(%struct.xdr_stream* %20, i64 %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %37

32:                                               ; preds = %19
  %33 = load i32*, i32** %7, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @xdr_encode_opaque(i32* %33, i8* %34, i64 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %29, %16
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i64) #1

declare dso_local i32 @xdr_encode_opaque(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
