; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_http2-pushinmemory.c_setup.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_http2-pushinmemory.c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLOPT_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"https://localhost:8443/index.html\00", align 1
@CURLOPT_HTTP_VERSION = common dso_local global i32 0, align 4
@CURL_HTTP_VERSION_2_0 = common dso_local global i64 0, align 8
@CURLOPT_SSL_VERIFYPEER = common dso_local global i32 0, align 4
@CURLOPT_SSL_VERIFYHOST = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@write_cb = common dso_local global i64 0, align 8
@files = common dso_local global i32* null, align 8
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLOPT_PIPEWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @CURLOPT_URL, align 4
  %5 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %3, i32 %4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @CURLOPT_HTTP_VERSION, align 4
  %8 = load i64, i64* @CURL_HTTP_VERSION_2_0, align 8
  %9 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %6, i32 %7, i64 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @CURLOPT_SSL_VERIFYPEER, align 4
  %12 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %10, i32 %11, i64 0)
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @CURLOPT_SSL_VERIFYHOST, align 4
  %15 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %13, i32 %14, i64 0)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %18 = load i64, i64* @write_cb, align 8
  %19 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %16, i32 %17, i64 %18)
  %20 = load i32*, i32** @files, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = call i32 @init_memory(i32* %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %25 = load i32*, i32** @files, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %23, i32 %24, i32* %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @CURLOPT_PIPEWAIT, align 4
  %30 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %28, i32 %29, i64 1)
  ret void
}

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @init_memory(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
