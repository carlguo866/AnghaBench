; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_files.c_ngx_read_file.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_files.c_ngx_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i8*, i8*, i64, i64 }

@ngx_errno = common dso_local global i64 0, align 8
@ERROR_HANDLE_EOF = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ReadFile() \22%s\22 failed\00", align 1
@NGX_ERROR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_read_file(%struct.TYPE_7__* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = ashr i32 %20, 32
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32* null, i32** %25, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %13, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %32 = call i64 @ReadFile(i32 %28, i32* %29, i64 %30, i8** %10, %struct.TYPE_8__* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %4
  %35 = load i64, i64* @ngx_errno, align 8
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @ERROR_HANDLE_EOF, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i8* null, i8** %5, align 8
  br label %61

40:                                               ; preds = %34
  %41 = load i32, i32* @NGX_LOG_ERR, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ngx_log_error(i32 %41, i32 %44, i64 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i8*, i8** @NGX_ERROR, align 8
  store i8* %51, i8** %5, align 8
  br label %61

52:                                               ; preds = %4
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr i8, i8* %53, i64 %57
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load i8*, i8** %10, align 8
  store i8* %60, i8** %5, align 8
  br label %61

61:                                               ; preds = %52, %40, %39
  %62 = load i8*, i8** %5, align 8
  ret i8* %62
}

declare dso_local i64 @ReadFile(i32, i32*, i64, i8**, %struct.TYPE_8__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
