; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_crawl_revisions2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_crawl_revisions2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wrap_3to2_report_baton = type { i8*, i32* }

@wrap_3to2_reporter = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_crawl_revisions2(i8* %0, i32* %1, i32* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.wrap_3to2_report_baton, align 8
  store i8* %0, i8** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = getelementptr inbounds %struct.wrap_3to2_report_baton, %struct.wrap_3to2_report_baton* %23, i32 0, i32 1
  store i32* %24, i32** %25, align 8
  %26 = load i8*, i8** %15, align 8
  %27 = getelementptr inbounds %struct.wrap_3to2_report_baton, %struct.wrap_3to2_report_baton* %23, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %17, align 4
  %32 = call i32 @SVN_DEPTH_INFINITY_OR_FILES(i32 %31)
  %33 = load i32, i32* @FALSE, align 4
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* %19, align 4
  %36 = load i8*, i8** %20, align 8
  %37 = load i32*, i32** %21, align 8
  %38 = load i32*, i32** %22, align 8
  %39 = call i32* @svn_wc_crawl_revisions3(i8* %28, i32* %29, i32* @wrap_3to2_reporter, %struct.wrap_3to2_report_baton* %23, i32 %30, i32 %32, i32 %33, i32 %34, i32 %35, i8* %36, i32* %37, i32* %38)
  ret i32* %39
}

declare dso_local i32* @svn_wc_crawl_revisions3(i8*, i32*, i32*, %struct.wrap_3to2_report_baton*, i32, i32, i32, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @SVN_DEPTH_INFINITY_OR_FILES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
