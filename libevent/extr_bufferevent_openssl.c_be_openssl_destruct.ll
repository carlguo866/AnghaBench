; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_be_openssl_destruct.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_be_openssl_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_openssl = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@EVUTIL_INVALID_SOCKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*)* @be_openssl_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_openssl_destruct(%struct.bufferevent* %0) #0 {
  %2 = alloca %struct.bufferevent*, align 8
  %3 = alloca %struct.bufferevent_openssl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %2, align 8
  %6 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %7 = call %struct.bufferevent_openssl* @upcast(%struct.bufferevent* %6)
  store %struct.bufferevent_openssl* %7, %struct.bufferevent_openssl** %3, align 8
  %8 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %9 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %1
  %16 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %17 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %15
  %21 = load i64, i64* @EVUTIL_INVALID_SOCKET, align 8
  store i64 %21, i64* %4, align 8
  %22 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %23 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @SSL_get_wbio(i32 %24)
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @BIO_get_fd(i32* %29, i32* null)
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %28, %20
  %32 = load i64, i64* %4, align 8
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @evutil_closesocket(i64 %35)
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %15
  %39 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %40 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @SSL_free(i32 %41)
  br label %43

43:                                               ; preds = %38, %1
  ret void
}

declare dso_local %struct.bufferevent_openssl* @upcast(%struct.bufferevent*) #1

declare dso_local i32* @SSL_get_wbio(i32) #1

declare dso_local i64 @BIO_get_fd(i32*, i32*) #1

declare dso_local i32 @evutil_closesocket(i64) #1

declare dso_local i32 @SSL_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
