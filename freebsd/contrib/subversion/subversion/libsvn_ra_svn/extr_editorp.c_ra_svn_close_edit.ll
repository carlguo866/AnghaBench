; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_editorp.c_ra_svn_close_edit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_editorp.c_ra_svn_close_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32)*, i32, i64 }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @ra_svn_close_edit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_close_edit(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %6, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @SVN_ERR_ASSERT(i32 %15)
  %17 = load i64, i64* @TRUE, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  store i64 %17, i64* %19, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @svn_ra_svn__write_cmd_close_edit(i32 %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @svn_ra_svn__read_cmd_response(i32 %28, i32* %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %31 = call i32* @svn_error_trace(i32 %30)
  store i32* %31, i32** %7, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %2
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @svn_ra_svn__write_cmd_abort_edit(i32 %38, i32* %39)
  %41 = call i32* @svn_error_trace(i32 %40)
  %42 = call i32* @svn_error_compose_create(i32* %35, i32* %41)
  store i32* %42, i32** %3, align 8
  br label %59

43:                                               ; preds = %2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32 (i32)*, i32 (i32)** %45, align 8
  %47 = icmp ne i32 (i32)* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32 (i32)*, i32 (i32)** %50, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %51(i32 %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  br label %57

57:                                               ; preds = %48, %43
  %58 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %58, i32** %3, align 8
  br label %59

59:                                               ; preds = %57, %34
  %60 = load i32*, i32** %3, align 8
  ret i32* %60
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__write_cmd_close_edit(i32, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_ra_svn__read_cmd_response(i32, i32*, i8*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32*) #1

declare dso_local i32 @svn_ra_svn__write_cmd_abort_edit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
