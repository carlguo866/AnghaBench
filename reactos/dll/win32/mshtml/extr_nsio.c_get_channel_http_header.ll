; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsio.c_get_channel_http_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsio.c_get_channel_http_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32 }
%struct.TYPE_3__ = type { i32 }

@NS_ERROR_UNEXPECTED = common dso_local global i32 0, align 4
@NS_ERROR_NOT_AVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s -> %s\0A\00", align 1
@NS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list*, i32*, i32*)* @get_channel_http_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_channel_http_header(%struct.list* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.list*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.list* %0, %struct.list** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @nsACString_GetData(i32* %12, i8** %8)
  %14 = load i8*, i8** %8, align 8
  %15 = call i8* @heap_strdupAtoW(i8* %14)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @NS_ERROR_UNEXPECTED, align 4
  store i32 %19, i32* %4, align 4
  br label %53

20:                                               ; preds = %3
  %21 = load %struct.list*, %struct.list** %5, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @strlenW(i8* %23)
  %25 = call %struct.TYPE_3__* @find_http_header(%struct.list* %21, i8* %22, i32 %24)
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %9, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @heap_free(i8* %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* @NS_ERROR_NOT_AVAILABLE, align 4
  store i32 %31, i32* %4, align 4
  br label %53

32:                                               ; preds = %20
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @heap_strdupWtoA(i32 %35)
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @NS_ERROR_UNEXPECTED, align 4
  store i32 %40, i32* %4, align 4
  br label %53

41:                                               ; preds = %32
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @debugstr_a(i8* %42)
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @debugstr_a(i8* %44)
  %46 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %45)
  %47 = load i32*, i32** %7, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @nsACString_SetData(i32* %47, i8* %48)
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @heap_free(i8* %50)
  %52 = load i32, i32* @NS_OK, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %41, %39, %30, %18
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @nsACString_GetData(i32*, i8**) #1

declare dso_local i8* @heap_strdupAtoW(i8*) #1

declare dso_local %struct.TYPE_3__* @find_http_header(%struct.list*, i8*, i32) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i8* @heap_strdupWtoA(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @nsACString_SetData(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
