; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_completion.c_completionColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_completion.c_completionColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @completionColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @completionColumn(i32* %0, i32* %1, i32 %2) #0 {
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
  switch i32 %10, label %41 [
    i32 131, label %11
    i32 129, label %21
    i32 128, label %28
    i32 130, label %35
  ]

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %20 = call i32 @sqlite3_result_text(i32* %12, i32 %15, i32 %18, i32 %19)
  br label %41

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %27 = call i32 @sqlite3_result_text(i32* %22, i32 %25, i32 -1, i32 %26)
  br label %41

28:                                               ; preds = %3
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %34 = call i32 @sqlite3_result_text(i32* %29, i32 %32, i32 -1, i32 %33)
  br label %41

35:                                               ; preds = %3
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sqlite3_result_int(i32* %36, i32 %39)
  br label %41

41:                                               ; preds = %3, %35, %28, %21, %11
  %42 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %42
}

declare dso_local i32 @sqlite3_result_text(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
