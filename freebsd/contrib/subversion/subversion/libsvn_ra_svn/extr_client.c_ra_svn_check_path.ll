; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_check_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_check_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i8*, i32, i32*, i32*)* @ra_svn_check_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_check_path(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %11, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %12, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i8* @reparent_path(%struct.TYPE_7__* %20, i8* %21, i32* %22)
  store i8* %23, i8** %7, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @svn_ra_svn__write_cmd_check_path(i32* %24, i32* %25, i8* %26, i32 %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @handle_auth_request(%struct.TYPE_6__* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32*, i32** %12, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @svn_ra_svn__read_cmd_response(i32* %34, i32* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @svn_node_kind_from_word(i8* %38)
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %41
}

declare dso_local i8* @reparent_path(%struct.TYPE_7__*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__write_cmd_check_path(i32*, i32*, i8*, i32) #1

declare dso_local i32 @handle_auth_request(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @svn_ra_svn__read_cmd_response(i32*, i32*, i8*, i8**) #1

declare dso_local i32 @svn_node_kind_from_word(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
