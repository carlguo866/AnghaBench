; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_rev_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_rev_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"(?s)\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*)* @rev_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rev_prop(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %9, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %17, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32* %18, i32** %19, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @svn_ra_svn__parse_tuple(i32* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10, i8** %11)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @svn_log__rev_prop(i32 %26, i8* %27, i32* %28)
  %30 = call i32 @log_command(%struct.TYPE_9__* %23, i32* %24, i32* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = call i32 @trivial_auth_request(i32* %32, i32* %33, %struct.TYPE_9__* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %45 = call i32 @authz_check_access_cb_func(%struct.TYPE_9__* %44)
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @svn_repos_fs_revision_prop(i32** %12, i32 %41, i32 %42, i8* %43, i32 %45, %struct.TYPE_10__* %13, i32* %46)
  %48 = call i32 @SVN_CMD_ERR(i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @svn_ra_svn__write_cmd_response(i32* %49, i32* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %54
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__parse_tuple(i32*, i8*, i32*, i8**) #1

declare dso_local i32 @log_command(%struct.TYPE_9__*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @svn_log__rev_prop(i32, i8*, i32*) #1

declare dso_local i32 @trivial_auth_request(i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @SVN_CMD_ERR(i32) #1

declare dso_local i32 @svn_repos_fs_revision_prop(i32**, i32, i32, i8*, i32, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @authz_check_access_cb_func(%struct.TYPE_9__*) #1

declare dso_local i32 @svn_ra_svn__write_cmd_response(i32*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
