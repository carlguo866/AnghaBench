; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_apndUnfetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_apndUnfetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { {}* }
%struct.TYPE_10__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, i8*)* @apndUnfetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apndUnfetch(%struct.TYPE_9__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = bitcast %struct.TYPE_9__* %8 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %7, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = call %struct.TYPE_9__* @ORIGFILE(%struct.TYPE_9__* %10)
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %4, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.TYPE_9__*, i64, i8*)**
  %17 = load i32 (%struct.TYPE_9__*, i64, i8*)*, i32 (%struct.TYPE_9__*, i64, i8*)** %16, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 %17(%struct.TYPE_9__* %18, i64 %23, i8* %24)
  ret i32 %25
}

declare dso_local %struct.TYPE_9__* @ORIGFILE(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
