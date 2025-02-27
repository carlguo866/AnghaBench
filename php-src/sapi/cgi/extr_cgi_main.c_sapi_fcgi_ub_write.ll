; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cgi/extr_cgi_main.c_sapi_fcgi_ub_write.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cgi/extr_cgi_main.c_sapi_fcgi_ub_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@server_context = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@FCGI_STDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @sapi_fcgi_ub_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sapi_fcgi_ub_write(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* @server_context, align 4
  %14 = call i64 @SG(i32 %13)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %8, align 8
  br label %16

16:                                               ; preds = %44, %2
  %17 = load i64, i64* %7, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %16
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @INT_MAX, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* @INT_MAX, align 8
  br label %29

25:                                               ; preds = %19
  %26 = load i64, i64* %7, align 8
  %27 = trunc i64 %26 to i32
  %28 = sext i32 %27 to i64
  br label %29

29:                                               ; preds = %25, %23
  %30 = phi i64 [ %24, %23 ], [ %28, %25 ]
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @FCGI_STDOUT, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @fcgi_write(i32* %32, i32 %33, i8* %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = call i32 (...) @php_handle_aborted_connection()
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = sub i64 %41, %42
  store i64 %43, i64* %3, align 8
  br label %55

44:                                               ; preds = %29
  %45 = load i32, i32* %10, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %7, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %7, align 8
  br label %16

53:                                               ; preds = %16
  %54 = load i64, i64* %5, align 8
  store i64 %54, i64* %3, align 8
  br label %55

55:                                               ; preds = %53, %39
  %56 = load i64, i64* %3, align 8
  ret i64 %56
}

declare dso_local i64 @SG(i32) #1

declare dso_local i32 @fcgi_write(i32*, i32, i8*, i32) #1

declare dso_local i32 @php_handle_aborted_connection(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
