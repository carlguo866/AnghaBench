; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5RowidMethod.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5RowidMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@FTS5CSR_EOF = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @fts5RowidMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5RowidMethod(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = load i32, i32* @FTS5CSR_EOF, align 4
  %14 = call i64 @CsrFlagTest(%struct.TYPE_4__* %12, i32 %13)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %25 [
    i32 128, label %19
    i32 129, label %21
    i32 131, label %21
    i32 130, label %21
  ]

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  store i32 0, i32* %20, align 4
  br label %31

21:                                               ; preds = %2, %2, %2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = call i32 @fts5CursorRowid(%struct.TYPE_4__* %22)
  %24 = load i32*, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  br label %31

25:                                               ; preds = %2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sqlite3_column_int64(i32 %28, i32 0)
  %30 = load i32*, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %21, %19
  %32 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %32
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CsrFlagTest(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @fts5CursorRowid(%struct.TYPE_4__*) #1

declare dso_local i32 @sqlite3_column_int64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
