; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5SpecialDelete.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5SpecialDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32**)* @fts5SpecialDelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5SpecialDelete(%struct.TYPE_3__* %0, i32** %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32** %1, i32*** %4, align 8
  %8 = load i32, i32* @SQLITE_OK, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32**, i32*** %4, align 8
  %10 = getelementptr inbounds i32*, i32** %9, i64 1
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @sqlite3_value_type(i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SQLITE_INTEGER, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load i32**, i32*** %4, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @sqlite3_value_int64(i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32**, i32*** %4, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 2
  %27 = call i32 @sqlite3Fts5StorageDelete(i32 %23, i32 %24, i32** %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %16, %2
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @sqlite3Fts5StorageDelete(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
