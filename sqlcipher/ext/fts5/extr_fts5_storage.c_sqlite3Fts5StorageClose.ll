; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_storage.c_sqlite3Fts5StorageClose.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_storage.c_sqlite3Fts5StorageClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5StorageClose(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load i32, i32* @SQLITE_OK, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %25, %8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @ArraySize(i32* %13)
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %9
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sqlite3_finalize(i32 %23)
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %9

28:                                               ; preds = %9
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = call i32 @sqlite3_free(%struct.TYPE_4__* %29)
  br label %31

31:                                               ; preds = %28, %1
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @ArraySize(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
