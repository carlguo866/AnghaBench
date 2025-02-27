; ModuleID = '/home/carl/AnghaBench/libgit2/tests/clone/extr_nonetwork.c_assert_correct_reflog.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/clone/extr_nonetwork.c_assert_correct_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"clone: from %s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@g_repo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @assert_correct_reflog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_correct_reflog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__, align 4
  store i8* %0, i8** %2, align 8
  %6 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %7 = call i32 @cl_git_fixture_url(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @git_buf_printf(%struct.TYPE_5__* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @g_repo, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @git_reflog_read(i32** %3, i32 %9, i8* %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @git_reflog_entrycount(i32* %13)
  %15 = call i32 @cl_assert_equal_i(i32 1, i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32* @git_reflog_entry_byindex(i32* %16, i32 0)
  store i32* %17, i32** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @git_reflog_entry_message(i32* %20)
  %22 = call i32 @cl_assert_equal_s(i32 %19, i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @git_reflog_free(i32* %23)
  %25 = call i32 @git_buf_dispose(%struct.TYPE_5__* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_printf(%struct.TYPE_5__*, i8*, i32) #2

declare dso_local i32 @cl_git_fixture_url(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reflog_read(i32**, i32, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_reflog_entrycount(i32*) #2

declare dso_local i32* @git_reflog_entry_byindex(i32*, i32) #2

declare dso_local i32 @cl_assert_equal_s(i32, i32) #2

declare dso_local i32 @git_reflog_entry_message(i32*) #2

declare dso_local i32 @git_reflog_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
