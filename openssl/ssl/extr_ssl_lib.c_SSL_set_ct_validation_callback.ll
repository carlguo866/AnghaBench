; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_SSL_set_ct_validation_callback.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_SSL_set_ct_validation_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32*, i32 }

@TLSEXT_TYPE_signed_certificate_timestamp = common dso_local global i32 0, align 4
@SSL_F_SSL_SET_CT_VALIDATION_CALLBACK = common dso_local global i32 0, align 4
@SSL_R_CUSTOM_EXT_HANDLER_ALREADY_INSTALLED = common dso_local global i32 0, align 4
@TLSEXT_STATUSTYPE_ocsp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_set_ct_validation_callback(%struct.TYPE_4__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @TLSEXT_TYPE_signed_certificate_timestamp, align 4
  %15 = call i64 @SSL_CTX_has_client_custom_ext(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load i32, i32* @SSL_F_SSL_SET_CT_VALIDATION_CALLBACK, align 4
  %19 = load i32, i32* @SSL_R_CUSTOM_EXT_HANDLER_ALREADY_INSTALLED, align 4
  %20 = call i32 @SSLerr(i32 %18, i32 %19)
  store i32 0, i32* %4, align 4
  br label %38

21:                                               ; preds = %10, %3
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = load i32, i32* @TLSEXT_STATUSTYPE_ocsp, align 4
  %27 = call i32 @SSL_set_tlsext_status_type(%struct.TYPE_4__* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %38

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %21
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %31, %29, %17
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @SSL_CTX_has_client_custom_ext(i32, i32) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @SSL_set_tlsext_status_type(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
