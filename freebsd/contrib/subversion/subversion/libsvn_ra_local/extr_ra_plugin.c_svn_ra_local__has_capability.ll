; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_svn_ra_local__has_capability.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_svn_ra_local__has_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SVN_RA_CAPABILITY_DEPTH = common dso_local global i32 0, align 4
@SVN_RA_CAPABILITY_LOG_REVPROPS = common dso_local global i32 0, align 4
@SVN_RA_CAPABILITY_PARTIAL_REPLAY = common dso_local global i32 0, align 4
@SVN_RA_CAPABILITY_COMMIT_REVPROPS = common dso_local global i32 0, align 4
@SVN_RA_CAPABILITY_ATOMIC_REVPROPS = common dso_local global i32 0, align 4
@SVN_RA_CAPABILITY_INHERITED_PROPS = common dso_local global i32 0, align 4
@SVN_RA_CAPABILITY_EPHEMERAL_TXNPROPS = common dso_local global i32 0, align 4
@SVN_RA_CAPABILITY_GET_FILE_REVS_REVERSE = common dso_local global i32 0, align 4
@SVN_RA_CAPABILITY_LIST = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_RA_CAPABILITY_MERGEINFO = common dso_local global i32 0, align 4
@SVN_REPOS_CAPABILITY_MERGEINFO = common dso_local global i32 0, align 4
@SVN_ERR_UNKNOWN_CAPABILITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Don't know anything about capability '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32*, i8*, i32*)* @svn_ra_local__has_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @svn_ra_local__has_capability(%struct.TYPE_4__* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* @SVN_RA_CAPABILITY_DEPTH, align 4
  %16 = call i64 @strcmp(i8* %14, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %58, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* @SVN_RA_CAPABILITY_LOG_REVPROPS, align 4
  %21 = call i64 @strcmp(i8* %19, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %58, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @SVN_RA_CAPABILITY_PARTIAL_REPLAY, align 4
  %26 = call i64 @strcmp(i8* %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %58, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* @SVN_RA_CAPABILITY_COMMIT_REVPROPS, align 4
  %31 = call i64 @strcmp(i8* %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %58, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* @SVN_RA_CAPABILITY_ATOMIC_REVPROPS, align 4
  %36 = call i64 @strcmp(i8* %34, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* @SVN_RA_CAPABILITY_INHERITED_PROPS, align 4
  %41 = call i64 @strcmp(i8* %39, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* @SVN_RA_CAPABILITY_EPHEMERAL_TXNPROPS, align 4
  %46 = call i64 @strcmp(i8* %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* @SVN_RA_CAPABILITY_GET_FILE_REVS_REVERSE, align 4
  %51 = call i64 @strcmp(i8* %49, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* @SVN_RA_CAPABILITY_LIST, align 4
  %56 = call i64 @strcmp(i8* %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53, %48, %43, %38, %33, %28, %23, %18, %4
  %59 = load i32, i32* @TRUE, align 4
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  br label %81

61:                                               ; preds = %53
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* @SVN_RA_CAPABILITY_MERGEINFO, align 4
  %64 = call i64 @strcmp(i8* %62, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* @SVN_REPOS_CAPABILITY_MERGEINFO, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @svn_repos_has_capability(i32 %69, i32* %70, i32 %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  br label %80

75:                                               ; preds = %61
  %76 = load i32, i32* @SVN_ERR_UNKNOWN_CAPABILITY, align 4
  %77 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %78 = load i8*, i8** %8, align 8
  %79 = call i32* @svn_error_createf(i32 %76, i32* null, i32 %77, i8* %78)
  store i32* %79, i32** %5, align 8
  br label %83

80:                                               ; preds = %66
  br label %81

81:                                               ; preds = %80, %58
  %82 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %82, i32** %5, align 8
  br label %83

83:                                               ; preds = %81, %75
  %84 = load i32*, i32** %5, align 8
  ret i32* %84
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_repos_has_capability(i32, i32*, i32, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
