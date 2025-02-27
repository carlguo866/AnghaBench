; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_renegotiate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_renegotiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@TLSEXT_TYPE_renegotiate = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CTOS_RENEGOTIATE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_ctos_renegotiate(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %17, i32* %6, align 4
  br label %54

18:                                               ; preds = %5
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* @TLSEXT_TYPE_renegotiate, align 4
  %21 = call i32 @WPACKET_put_bytes_u16(i32* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %18
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @WPACKET_start_sub_packet_u16(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @WPACKET_sub_memcpy_u8(i32* %28, i32 %33, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %27
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @WPACKET_close(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %41, %27, %23, %18
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %48 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_RENEGOTIATE, align 4
  %49 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %50 = call i32 @SSLfatal(%struct.TYPE_6__* %46, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %51, i32* %6, align 4
  br label %54

52:                                               ; preds = %41
  %53 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %45, %16
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @WPACKET_sub_memcpy_u8(i32*, i32, i32) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
