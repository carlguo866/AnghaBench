; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_set_iov.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_set_iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32*, %struct.kvec*, i32*, i32* }
%struct.kvec = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.kvec*, i32)* @xdr_set_iov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xdr_set_iov(%struct.xdr_stream* %0, %struct.kvec* %1, i32 %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.kvec*, align 8
  %6 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.kvec* %1, %struct.kvec** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.kvec*, %struct.kvec** %5, align 8
  %9 = getelementptr inbounds %struct.kvec, %struct.kvec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ugt i32 %7, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.kvec*, %struct.kvec** %5, align 8
  %14 = getelementptr inbounds %struct.kvec, %struct.kvec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.kvec*, %struct.kvec** %5, align 8
  %18 = getelementptr inbounds %struct.kvec, %struct.kvec* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %22 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %21, i32 0, i32 3
  store i32* %20, i32** %22, align 8
  %23 = load %struct.kvec*, %struct.kvec** %5, align 8
  %24 = getelementptr inbounds %struct.kvec, %struct.kvec* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = inttoptr i64 %28 to i32*
  %30 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %31 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.kvec*, %struct.kvec** %5, align 8
  %33 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %34 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %33, i32 0, i32 1
  store %struct.kvec* %32, %struct.kvec** %34, align 8
  %35 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %36 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
