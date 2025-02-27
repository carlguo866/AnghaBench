; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_get_writable_final_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_get_writable_final_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i32 }

@get_writable_proto_rev_body = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@APR_END = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i32, i32, i32*, i32*)* @get_writable_final_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_writable_final_rev(i32** %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32*, i32** %12, align 8
  %21 = call i8* @svn_fs_x__path_txn_proto_rev(i32* %18, i32 %19, i32* %20)
  store i8* %21, i8** %16, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32*, i32** %12, align 8
  %25 = call i8* @svn_fs_x__path_rev(i32* %22, i32 %23, i32* %24)
  store i8* %25, i8** %17, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i8** %15, i8*** %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* @get_writable_proto_rev_body, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @with_txnlist_lock(i32* %29, i32 %30, %struct.TYPE_3__* %13, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i8*, i8** %16, align 8
  %35 = load i8*, i8** %17, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @svn_io_file_rename2(i8* %34, i8* %35, i32 %36, i32* %37)
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i8*, i8** %15, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @unlock_proto_rev(i32* %39, i32 %40, i8* %41, i32* %42)
  %44 = call i32 @svn_error_compose_create(i32 %38, i32 %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32*, i32** %11, align 8
  %47 = load i8*, i8** %17, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @svn_fs_x__batch_fsync_new_path(i32* %46, i8* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32**, i32*** %7, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @svn_fs_x__batch_fsync_open_file(i32** %51, i32* %52, i8* %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32**, i32*** %7, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @APR_END, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @svn_io_file_seek(i32* %58, i32 %59, i32* %14, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i32*, i32** %8, align 8
  %64 = load i32**, i32*** %7, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @auto_truncate_proto_rev(i32* %63, i32* %65, i32 %66, i32 %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %71
}

declare dso_local i8* @svn_fs_x__path_txn_proto_rev(i32*, i32, i32*) #1

declare dso_local i8* @svn_fs_x__path_rev(i32*, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @with_txnlist_lock(i32*, i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @svn_error_compose_create(i32, i32) #1

declare dso_local i32 @svn_io_file_rename2(i8*, i8*, i32, i32*) #1

declare dso_local i32 @unlock_proto_rev(i32*, i32, i8*, i32*) #1

declare dso_local i32 @svn_fs_x__batch_fsync_new_path(i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_x__batch_fsync_open_file(i32**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_io_file_seek(i32*, i32, i32*, i32*) #1

declare dso_local i32 @auto_truncate_proto_rev(i32*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
