; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_btreeinfo.c_binfoFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_btreeinfo.c_binfoFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i8*, i32, i64 }
%struct.TYPE_7__ = type { i32 }

@SQLITE_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.2 = private unnamed_addr constant [159 x i8] c"SELECT 0, 'table','sqlite_master','sqlite_master',1,NULL UNION ALL SELECT rowid, type, name, tbl_name, rootpage, sql FROM \22%w\22.sqlite_master WHERE rootpage>=1\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i8*, i32, i32**)* @binfoFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binfoFilter(%struct.TYPE_6__* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32** %4, i32*** %10, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = bitcast %struct.TYPE_6__* %15 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %11, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %12, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @sqlite3_free(i8* %23)
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %42

27:                                               ; preds = %5
  %28 = load i32**, i32*** %10, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @sqlite3_value_type(i32* %30)
  %32 = load i64, i64* @SQLITE_NULL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load i32**, i32*** %10, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i8* @sqlite3_value_text(i32* %37)
  %39 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %46

42:                                               ; preds = %27, %5
  %43 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %42, %34
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  store i8* %50, i8** %13, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @sqlite3_finalize(i64 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  store i32 -1, i32* %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %13, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = call i32 @sqlite3_prepare_v2(i32 %61, i8* %62, i32 -1, i64* %64, i32 0)
  store i32 %65, i32* %14, align 4
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @sqlite3_free(i8* %66)
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @SQLITE_OK, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %46
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %73 = call i32 @binfoNext(%struct.TYPE_6__* %72)
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %71, %46
  %75 = load i32, i32* %14, align 4
  ret i32 %75
}

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_finalize(i64) #1

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i64*, i32) #1

declare dso_local i32 @binfoNext(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
