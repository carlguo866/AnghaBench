; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_servername_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_servername_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLSEXT_NAMETYPE_host_name = common dso_local global i32 0, align 4
@sn_server2 = common dso_local global i32* null, align 8
@bio_stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Servername 2 is NULL\0A\00", align 1
@SSL_TLSEXT_ERR_NOACK = common dso_local global i32 0, align 4
@s_ctx2 = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Switching server context.\0A\00", align 1
@SSL_TLSEXT_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @servername_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @servername_cb(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @TLSEXT_NAMETYPE_host_name, align 4
  %11 = call i8* @SSL_get_servername(i32* %9, i32 %10)
  store i8* %11, i8** %8, align 8
  %12 = load i32*, i32** @sn_server2, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @bio_stdout, align 4
  %16 = call i32 @BIO_printf(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @SSL_TLSEXT_ERR_NOACK, align 4
  store i32 %17, i32* %4, align 4
  br label %41

18:                                               ; preds = %3
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load i32*, i32** @s_ctx2, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i32*, i32** @sn_server2, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i8*, i8** %8, align 8
  %29 = load i32*, i32** @sn_server2, align 8
  %30 = call i32 @strcasecmp(i8* %28, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @bio_stdout, align 4
  %34 = call i32 @BIO_printf(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** @s_ctx2, align 8
  %37 = call i32 @SSL_set_SSL_CTX(i32* %35, i32* %36)
  br label %38

38:                                               ; preds = %32, %27, %24, %21
  br label %39

39:                                               ; preds = %38, %18
  %40 = load i32, i32* @SSL_TLSEXT_ERR_OK, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i8* @SSL_get_servername(i32*, i32) #1

declare dso_local i32 @BIO_printf(i32, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i32*) #1

declare dso_local i32 @SSL_set_SSL_CTX(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
