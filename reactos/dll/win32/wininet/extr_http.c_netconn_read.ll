; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_netconn_read.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_netconn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"res %u read %u bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_5__*, i32*, i64, i64*, i32)* @netconn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @netconn_read(i32* %0, %struct.TYPE_5__* %1, i32* %2, i64 %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %13, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %18, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = call i64 @min(i64 %19, i64 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %6
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @is_valid_netconn(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %30
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i64 @NETCON_recv(i32 %39, i32* %40, i64 %41, i32 %42, i32* %15)
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %36
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %56, %36
  br label %64

64:                                               ; preds = %63, %30, %6
  %65 = load i64, i64* %14, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %65, i32 %66)
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64*, i64** %11, align 8
  store i64 %69, i64* %70, align 8
  %71 = load i64, i64* %14, align 8
  ret i64 %71
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @is_valid_netconn(i32) #1

declare dso_local i64 @NETCON_recv(i32, i32*, i64, i32, i32*) #1

declare dso_local i32 @TRACE(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
