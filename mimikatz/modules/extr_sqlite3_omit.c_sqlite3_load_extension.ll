; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_sqlite3_load_extension.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_sqlite3_load_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_load_extension(%struct.TYPE_5__* %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sqlite3_mutex_enter(i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8**, i8*** %8, align 8
  %18 = call i32 @sqlite3LoadExtension(%struct.TYPE_5__* %14, i8* %15, i8* %16, i8** %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @sqlite3ApiExit(%struct.TYPE_5__* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sqlite3_mutex_leave(i32 %24)
  %26 = load i32, i32* %9, align 4
  ret i32 %26
}

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3LoadExtension(%struct.TYPE_5__*, i8*, i8*, i8**) #1

declare dso_local i32 @sqlite3ApiExit(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
