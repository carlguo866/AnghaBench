; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_ast.c_new_stmt_if.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_ast.c_new_stmt_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i8*, i32, i8*, i32*, %struct.TYPE_7__* }

@STMT_IF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @new_stmt_if(i32 %0, %struct.TYPE_7__* %1, i32* %2, i8* %3, i32* %4, i64 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load i32, i32* @STMT_IF, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.TYPE_7__* @new_stmt(i32 %16, i32 %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %15, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 5
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %22, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  store i32* %23, i32** %26, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  store i8* %27, i8** %30, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @AST_DUP(i32* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  ret %struct.TYPE_7__* %44
}

declare dso_local %struct.TYPE_7__* @new_stmt(i32, i32) #1

declare dso_local i32 @AST_DUP(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
