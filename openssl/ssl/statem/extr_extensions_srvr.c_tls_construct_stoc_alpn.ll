; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_alpn.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_alpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }

@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@TLSEXT_TYPE_application_layer_protocol_negotiation = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_STOC_ALPN = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_stoc_alpn(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
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
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %18, i32* %6, align 4
  br label %61

19:                                               ; preds = %5
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* @TLSEXT_TYPE_application_layer_protocol_negotiation, align 4
  %22 = call i32 @WPACKET_put_bytes_u16(i32* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %19
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @WPACKET_start_sub_packet_u16(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @WPACKET_start_sub_packet_u16(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @WPACKET_sub_memcpy_u8(i32* %33, i32* %37, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %32
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @WPACKET_close(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @WPACKET_close(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %48, %44, %32, %28, %24, %19
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %54 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %55 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_ALPN, align 4
  %56 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %57 = call i32 @SSLfatal(%struct.TYPE_6__* %53, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %58, i32* %6, align 4
  br label %61

59:                                               ; preds = %48
  %60 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %52, %17
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @WPACKET_sub_memcpy_u8(i32*, i32*, i32) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
