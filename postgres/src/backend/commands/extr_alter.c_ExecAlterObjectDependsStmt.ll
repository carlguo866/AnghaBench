; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_alter.c_ExecAlterObjectDependsStmt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_alter.c_ExecAlterObjectDependsStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@AccessExclusiveLock = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@OBJECT_EXTENSION = common dso_local global i32 0, align 4
@DEPENDENCY_AUTO_EXTENSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExecAlterObjectDependsStmt(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* @AccessExclusiveLock, align 4
  %19 = call i32 @get_object_address_rv(i32 %10, i32 %13, i32* %17, i32** %7, i32 %18, i32 0)
  store i32 %19, i32* %5, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @NoLock, align 4
  %25 = call i32 @table_close(i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* @OBJECT_EXTENSION, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load i32, i32* @AccessExclusiveLock, align 4
  %33 = call i32 @get_object_address(i32 %27, i32* %31, i32** %7, i32 %32, i32 0)
  store i32 %33, i32* %6, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = icmp eq i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %26
  %41 = load i32, i32* %6, align 4
  %42 = load i32*, i32** %4, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %26
  %44 = load i32, i32* @DEPENDENCY_AUTO_EXTENSION, align 4
  %45 = call i32 @recordDependencyOn(i32* %5, i32* %6, i32 %44)
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @get_object_address_rv(i32, i32, i32*, i32**, i32, i32) #1

declare dso_local i32 @table_close(i32*, i32) #1

declare dso_local i32 @get_object_address(i32, i32*, i32**, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @recordDependencyOn(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
