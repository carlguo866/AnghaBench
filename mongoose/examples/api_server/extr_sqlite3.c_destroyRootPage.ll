; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_destroyRootPage.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_destroyRootPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@OP_Destroy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"UPDATE %Q.%s SET rootpage=%d WHERE #%d AND rootpage=#%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, i32)* @destroyRootPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroyRootPage(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = call i32* @sqlite3GetVdbe(%struct.TYPE_12__* %9)
  store i32* %10, i32** %7, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = call i32 @sqlite3GetTempReg(%struct.TYPE_12__* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* @OP_Destroy, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @sqlite3VdbeAddOp3(i32* %13, i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = call i32 @sqlite3MayAbort(%struct.TYPE_12__* %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @SCHEMA_TABLE(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @sqlite3NestedParse(%struct.TYPE_12__* %21, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_12__* %38, i32 %39)
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3MayAbort(%struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3NestedParse(%struct.TYPE_12__*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SCHEMA_TABLE(i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
