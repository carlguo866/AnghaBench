; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_alias.c_IntCreateAliasHeader.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_alias.c_IntCreateAliasHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i32*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32, i32*, i64, i64)* @IntCreateAliasHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @IntCreateAliasHeader(i32 %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %82

15:                                               ; preds = %4
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32* %19, i32** %20, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  store i64 %21, i64* %22, align 8
  br label %33

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %29 = call i32 @ConvertInputAnsiToUnicode(i32 %24, i32* %25, i64 %26, i32** %27, i64* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %82

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %18
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add i64 4, %38
  %40 = call %struct.TYPE_8__* @ConsoleAllocHeap(i32 0, i64 %39)
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %11, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %33
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @ConsoleFreeHeap(i32* %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %5, align 8
  br label %82

52:                                               ; preds = %33
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 1
  %55 = ptrtoint %struct.TYPE_8__* %54 to i64
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  store i64 %55, i64* %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = call i32 @RtlCopyUnicodeString(%struct.TYPE_9__* %68, %struct.TYPE_7__* %10)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  %74 = load i64, i64* %9, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %52
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @ConsoleFreeHeap(i32* %78)
  br label %80

80:                                               ; preds = %76, %52
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %5, align 8
  br label %82

82:                                               ; preds = %80, %50, %31, %14
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %83
}

declare dso_local i32 @ConvertInputAnsiToUnicode(i32, i32*, i64, i32**, i64*) #1

declare dso_local %struct.TYPE_8__* @ConsoleAllocHeap(i32, i64) #1

declare dso_local i32 @ConsoleFreeHeap(i32*) #1

declare dso_local i32 @RtlCopyUnicodeString(%struct.TYPE_9__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
