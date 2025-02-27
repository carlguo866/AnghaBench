; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_ipc-win.c_get_user_sid.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_ipc-win.c_get_user_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@TOKEN_QUERY = common dso_local global i32 0, align 4
@TokenUser = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_user_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_user_sid() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i8* null, i8** %1, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  %5 = call i32 (...) @GetCurrentProcess()
  %6 = load i32, i32* @TOKEN_QUERY, align 4
  %7 = call i32 @OpenProcessToken(i32 %5, i32 %6, i64* %3)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %43

10:                                               ; preds = %0
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* @TokenUser, align 4
  %13 = call i32 @GetTokenInformation(i64 %11, i32 %12, %struct.TYPE_7__* null, i32 0, i32* %4)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = call i64 (...) @GetLastError()
  %17 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %43

20:                                               ; preds = %15, %10
  %21 = load i32, i32* %4, align 4
  %22 = call %struct.TYPE_7__* @talloc_size(i32* null, i32 %21)
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %2, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i32, i32* @TokenUser, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @GetTokenInformation(i64 %23, i32 %24, %struct.TYPE_7__* %25, i32 %26, i32* %4)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %43

30:                                               ; preds = %20
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %43

37:                                               ; preds = %30
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ConvertSidToStringSidA(i32 %41, i8** %1)
  br label %43

43:                                               ; preds = %37, %36, %29, %19, %9
  %44 = load i64, i64* %3, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @CloseHandle(i64 %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = call i32 @talloc_free(%struct.TYPE_7__* %50)
  %52 = load i8*, i8** %1, align 8
  ret i8* %52
}

declare dso_local i32 @OpenProcessToken(i32, i32, i64*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @GetTokenInformation(i64, i32, %struct.TYPE_7__*, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local %struct.TYPE_7__* @talloc_size(i32*, i32) #1

declare dso_local i32 @ConvertSidToStringSidA(i32, i8**) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @talloc_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
