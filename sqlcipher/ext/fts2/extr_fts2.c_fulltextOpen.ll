; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_fulltextOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_fulltextOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"FTS2 Open %p: %p\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**)* @fulltextOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fulltextOpen(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %7 = call i64 @sqlite3_malloc(i32 4)
  %8 = inttoptr i64 %7 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = call i32 @memset(%struct.TYPE_3__* %12, i32 0, i32 4)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32**, i32*** %5, align 8
  store i32* %15, i32** %16, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = bitcast %struct.TYPE_3__* %18 to i8*
  %20 = call i32 @TRACE(i8* %19)
  %21 = load i32, i32* @SQLITE_OK, align 4
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %11
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
