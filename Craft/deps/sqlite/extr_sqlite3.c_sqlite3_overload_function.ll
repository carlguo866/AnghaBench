; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3_overload_function.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3_overload_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@sqlite3InvalidFunction = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_overload_function(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @sqlite3Strlen30(i8* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @SQLITE_OK, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sqlite3_mutex_enter(i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SQLITE_UTF8, align 4
  %21 = call i64 @sqlite3FindFunction(%struct.TYPE_6__* %16, i8* %17, i32 %18, i32 %19, i32 %20, i32 0)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SQLITE_UTF8, align 4
  %28 = load i32, i32* @sqlite3InvalidFunction, align 4
  %29 = call i32 @sqlite3CreateFunc(%struct.TYPE_6__* %24, i8* %25, i32 %26, i32 %27, i32 0, i32 %28, i32 0, i32 0, i32 0)
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %23, %3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @sqlite3ApiExit(%struct.TYPE_6__* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sqlite3_mutex_leave(i32 %36)
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i64 @sqlite3FindFunction(%struct.TYPE_6__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3CreateFunc(%struct.TYPE_6__*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3ApiExit(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
