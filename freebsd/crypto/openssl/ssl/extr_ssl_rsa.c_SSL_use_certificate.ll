; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_rsa.c_SSL_use_certificate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_rsa.c_SSL_use_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SSL_F_SSL_USE_CERTIFICATE = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_use_certificate(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @SSL_F_SSL_USE_CERTIFICATE, align 4
  %11 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %12 = call i32 @SSLerr(i32 %10, i32 %11)
  store i32 0, i32* %3, align 4
  br label %29

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @ssl_security_cert(%struct.TYPE_4__* %14, i32* null, i32* %15, i32 0, i32 1)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @SSL_F_SSL_USE_CERTIFICATE, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @SSLerr(i32 %20, i32 %21)
  store i32 0, i32* %3, align 4
  br label %29

23:                                               ; preds = %13
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @ssl_set_cert(i32 %26, i32* %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %23, %19, %9
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @ssl_security_cert(%struct.TYPE_4__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @ssl_set_cert(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
