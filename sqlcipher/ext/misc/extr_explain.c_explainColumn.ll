; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_explain.c_explainColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_explain.c_explainColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@EXPLN_COLUMN_SQL = common dso_local global i32 0, align 4
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @explainColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @explainColumn(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @EXPLN_COLUMN_SQL, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %19 = call i32 @sqlite3_result_text(i32* %14, i32 %17, i32 -1, i32 %18)
  br label %28

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @sqlite3_column_value(i32 %24, i32 %25)
  %27 = call i32 @sqlite3_result_value(i32* %21, i32 %26)
  br label %28

28:                                               ; preds = %20, %13
  %29 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %29
}

declare dso_local i32 @sqlite3_result_text(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_result_value(i32*, i32) #1

declare dso_local i32 @sqlite3_column_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
