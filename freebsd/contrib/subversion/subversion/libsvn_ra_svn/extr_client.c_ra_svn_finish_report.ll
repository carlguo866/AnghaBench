; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_finish_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_finish_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @ra_svn_finish_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_finish_report(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @svn_ra_svn__write_cmd_finish_report(i32 %10, i32 %13)
  %15 = call i32 @SVN_ERR(i32 %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @handle_auth_request(i32 %18, i32 %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @svn_ra_svn_drive_editor2(i32 %26, i32 %29, i32 %32, i32 %35, i32* null, i32 %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @svn_ra_svn__read_cmd_response(i32 %41, i32 %44, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %47
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__write_cmd_finish_report(i32, i32) #1

declare dso_local i32 @handle_auth_request(i32, i32) #1

declare dso_local i32 @svn_ra_svn_drive_editor2(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @svn_ra_svn__read_cmd_response(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
