; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_InternalInsertTextFromCursor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_InternalInsertTextFromCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@diRun = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i32, i32*, i32, i32*, i32)* @ME_InternalInsertTextFromCursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ME_InternalInsertTextFromCursor(%struct.TYPE_8__* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i64 %18
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %13, align 8
  %20 = load i32, i32* @FALSE, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @diRun, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32* @ME_InsertRunAtCursor(%struct.TYPE_8__* %32, %struct.TYPE_9__* %33, i32* %34, i32* %35, i32 %36, i32 %37)
  ret i32* %38
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @ME_InsertRunAtCursor(%struct.TYPE_8__*, %struct.TYPE_9__*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
