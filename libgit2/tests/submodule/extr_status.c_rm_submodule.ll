; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_status.c_rm_submodule.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_status.c_rm_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rm_submodule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rm_submodule(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  store i8* %0, i8** %2, align 8
  %4 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %5 = load i32, i32* @g_repo, align 4
  %6 = call i32 @git_repository_workdir(i32 %5)
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %3, i32 %6, i8* %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %13 = call i32 @git_futils_rmdir_r(i32 %11, i32* null, i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @git_buf_dispose(%struct.TYPE_5__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_5__*, i32, i8*) #2

declare dso_local i32 @git_repository_workdir(i32) #2

declare dso_local i32 @git_futils_rmdir_r(i32, i32*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
