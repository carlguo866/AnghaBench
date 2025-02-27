; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_env.c_bdb_error_gatherer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_env.c_bdb_error_gatherer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*, i8*)*, i32* }

@SVN_ERR_FS_BERKELEY_DB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"bdb: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @bdb_error_gatherer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdb_error_gatherer(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = call %struct.TYPE_3__* @get_error_info(i32* %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %7, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @SVN_BDB_ERROR_GATHERER_IGNORE(i32* %12)
  %14 = load i32, i32* @SVN_ERR_FS_BERKELEY_DB, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i32* @svn_error_createf(i32 %14, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32* %16, i32** %8, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @svn_error_compose(i32* %24, i32* %25)
  br label %31

27:                                               ; preds = %3
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  br label %31

31:                                               ; preds = %27, %21
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %33, align 8
  %35 = icmp ne i32 (i32*, i8*)* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 %39(i32* null, i8* %40)
  br label %42

42:                                               ; preds = %36, %31
  ret void
}

declare dso_local %struct.TYPE_3__* @get_error_info(i32*) #1

declare dso_local i32 @SVN_BDB_ERROR_GATHERER_IGNORE(i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, i8*) #1

declare dso_local i32 @svn_error_compose(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
