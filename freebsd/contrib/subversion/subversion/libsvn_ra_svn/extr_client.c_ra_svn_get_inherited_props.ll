; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_get_inherited_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_get_inherited_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }

@SVN_RA_CAPABILITY_INHERITED_PROPS = common dso_local global i32 0, align 4
@SVN_ERR_RA_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"l\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i32**, i8*, i32, i32*, i32*)* @ra_svn_get_inherited_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_get_inherited_props(%struct.TYPE_9__* %0, i32** %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %14, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %15, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = call i8* @reparent_path(%struct.TYPE_9__* %24, i8* %25, i32* %26)
  store i8* %27, i8** %10, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = load i32, i32* @SVN_RA_CAPABILITY_INHERITED_PROPS, align 4
  %30 = load i32*, i32** %13, align 8
  %31 = call i32 @ra_svn_has_capability(%struct.TYPE_9__* %28, i32* %17, i32 %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %6
  %36 = load i32, i32* @SVN_ERR_RA_NOT_IMPLEMENTED, align 4
  %37 = call i32* @svn_error_create(i32 %36, i32* null, i32* null)
  store i32* %37, i32** %7, align 8
  br label %61

38:                                               ; preds = %6
  %39 = load i32*, i32** %15, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @svn_ra_svn__write_cmd_get_iprops(i32* %39, i32* %40, i8* %41, i32 %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @handle_auth_request(%struct.TYPE_8__* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32*, i32** %15, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @svn_ra_svn__read_cmd_response(i32* %49, i32* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32** %16)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32**, i32*** %9, align 8
  %54 = load i32*, i32** %16, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @parse_iproplist(i32** %53, i32* %54, %struct.TYPE_9__* %55, i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %60, i32** %7, align 8
  br label %61

61:                                               ; preds = %38, %35
  %62 = load i32*, i32** %7, align 8
  ret i32* %62
}

declare dso_local i8* @reparent_path(%struct.TYPE_9__*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @ra_svn_has_capability(%struct.TYPE_9__*, i32*, i32, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32 @svn_ra_svn__write_cmd_get_iprops(i32*, i32*, i8*, i32) #1

declare dso_local i32 @handle_auth_request(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @svn_ra_svn__read_cmd_response(i32*, i32*, i8*, i32**) #1

declare dso_local i32 @parse_iproplist(i32**, i32*, %struct.TYPE_9__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
