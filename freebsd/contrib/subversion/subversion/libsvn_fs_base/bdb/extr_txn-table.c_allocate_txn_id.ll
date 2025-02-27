; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_txn-table.c_allocate_txn_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_txn-table.c_allocate_txn_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*, i32, %struct.TYPE_20__*, i32, i32)*, i32 (%struct.TYPE_21__*, i32, %struct.TYPE_20__*, %struct.TYPE_20__*, i32)* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }

@MAX_KEY_SIZE = common dso_local global i32 0, align 4
@NEXT_KEY_KEY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"transactions\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"allocating new transaction ID (getting 'next-key')\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"bumping next transaction key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, %struct.TYPE_18__*, %struct.TYPE_17__*, i32*)* @allocate_txn_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @allocate_txn_id(i8** %0, %struct.TYPE_18__* %1, %struct.TYPE_17__* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_20__, align 4
  %11 = alloca %struct.TYPE_20__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %9, align 8
  %19 = load i32, i32* @MAX_KEY_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i8*, i8** @NEXT_KEY_KEY, align 8
  %24 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_20__* %10, i8* %23)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %26 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_17__* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = call i32 @N_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_21__*, i32, %struct.TYPE_20__*, i32, i32)*, i32 (%struct.TYPE_21__*, i32, %struct.TYPE_20__*, i32, i32)** %32, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @svn_fs_base__result_dbt(%struct.TYPE_20__* %11)
  %41 = call i32 %33(%struct.TYPE_21__* %36, i32 %39, %struct.TYPE_20__* %10, i32 %40, i32 0)
  %42 = call i32* @BDB_WRAP(%struct.TYPE_18__* %27, i32 %28, i32 %41)
  %43 = call i32 @SVN_ERR(i32* %42)
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @svn_fs_base__track_dbt(%struct.TYPE_20__* %11, i32* %44)
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @apr_pstrmemdup(i32* %46, i32 %48, i32 %50)
  %52 = load i8**, i8*** %5, align 8
  store i8* %51, i8** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @svn_fs_base__next_key(i32 %56, i32* %12, i8* %22)
  %58 = load i8*, i8** @NEXT_KEY_KEY, align 8
  %59 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_20__* %10, i8* %58)
  %60 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_20__* %11, i8* %22)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %62 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_17__* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load i32 (%struct.TYPE_21__*, i32, %struct.TYPE_20__*, %struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_21__*, i32, %struct.TYPE_20__*, %struct.TYPE_20__*, i32)** %66, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %69, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 %67(%struct.TYPE_21__* %70, i32 %73, %struct.TYPE_20__* %10, %struct.TYPE_20__* %11, i32 0)
  store i32 %74, i32* %15, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %76 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i32, i32* %15, align 4
  %78 = call i32* @BDB_WRAP(%struct.TYPE_18__* %75, i32 %76, i32 %77)
  %79 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %79)
  ret i32* %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @svn_fs_base__str_to_dbt(%struct.TYPE_20__*, i8*) #2

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_17__*, i8*, i8*) #2

declare dso_local i32 @SVN_ERR(i32*) #2

declare dso_local i32* @BDB_WRAP(%struct.TYPE_18__*, i32, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i32 @svn_fs_base__result_dbt(%struct.TYPE_20__*) #2

declare dso_local i32 @svn_fs_base__track_dbt(%struct.TYPE_20__*, i32*) #2

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #2

declare dso_local i32 @svn_fs_base__next_key(i32, i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
