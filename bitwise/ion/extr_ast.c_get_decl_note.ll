; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_ast.c_get_decl_note.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_ast.c_get_decl_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_7__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @get_decl_note(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = icmp ne %struct.TYPE_8__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %38

11:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %34, %11
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %13, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %12
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %24
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %7, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %3, align 8
  br label %38

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %6, align 8
  br label %12

37:                                               ; preds = %12
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %38

38:                                               ; preds = %37, %31, %10
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
