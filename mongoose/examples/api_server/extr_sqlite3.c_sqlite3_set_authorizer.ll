; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_sqlite3_set_authorizer.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_sqlite3_set_authorizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i8*, i32, i8*, i8*, i8*, i8*)*, i32, i8* }

@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_set_authorizer(%struct.TYPE_4__* %0, i32 (i8*, i32, i8*, i8*, i8*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32 (i8*, i32, i8*, i8*, i8*, i8*)*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 (i8*, i32, i8*, i8*, i8*, i8*)* %1, i32 (i8*, i32, i8*, i8*, i8*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @sqlite3_mutex_enter(i32 %9)
  %11 = load i32 (i8*, i32, i8*, i8*, i8*, i8*)*, i32 (i8*, i32, i8*, i8*, i8*, i8*)** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 (i8*, i32, i8*, i8*, i8*, i8*)* %11, i32 (i8*, i32, i8*, i8*, i8*, i8*)** %13, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = call i32 @sqlite3ExpirePreparedStatements(%struct.TYPE_4__* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @sqlite3_mutex_leave(i32 %21)
  %23 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %23
}

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3ExpirePreparedStatements(%struct.TYPE_4__*) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
