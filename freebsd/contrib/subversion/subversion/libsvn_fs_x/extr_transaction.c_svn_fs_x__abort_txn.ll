; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_svn_fs_x__abort_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_svn_fs_x__abort_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Transaction '%s' cleanup failed\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__abort_txn(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TRUE, align 4
  %9 = call i32 @svn_fs__check_fs(i32 %7, i32 %8)
  %10 = call i32 @SVN_ERR(i32 %9)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @svn_fs_x__purge_txn(i32 %13, i32 %16, i32* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @apr_psprintf(i32* %19, i32 %20, i32 %23)
  %25 = call i32 @SVN_ERR_W(i32 %18, i32 %24)
  %26 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %26
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs__check_fs(i32, i32) #1

declare dso_local i32 @SVN_ERR_W(i32, i32) #1

declare dso_local i32 @svn_fs_x__purge_txn(i32, i32, i32*) #1

declare dso_local i32 @apr_psprintf(i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
