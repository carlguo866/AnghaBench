; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_path.c_check_dirname.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_path.c_check_dirname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @check_dirname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_dirname(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @git_path_dirname_r(%struct.TYPE_5__* %5, i8* %8)
  %10 = icmp sge i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @cl_assert(i32 %11)
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @cl_assert_equal_s(i8* %13, i8* %15)
  %17 = call i32 @git_buf_dispose(%struct.TYPE_5__* %5)
  %18 = load i8*, i8** %3, align 8
  %19 = call i8* @git_path_dirname(i8* %18)
  store i8* %19, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @cl_assert(i32 %21)
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @cl_assert_equal_s(i8* %23, i8* %24)
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @git__free(i8* %26)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i64 @git_path_dirname_r(%struct.TYPE_5__*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

declare dso_local i8* @git_path_dirname(i8*) #2

declare dso_local i32 @git__free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
