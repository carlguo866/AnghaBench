; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_test_checkout_index__options_open_flags.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_test_checkout_index__options_open_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [19 x i8] c"./testrepo/new.txt\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"hi\0A\00", align 1
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_DONT_REMOVE_EXISTING = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"hi\0Amy new file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_index__options_open_flags() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 8, i1 false)
  %3 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %4 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %5 = load i32, i32* @GIT_CHECKOUT_DONT_REMOVE_EXISTING, align 4
  %6 = or i32 %4, %5
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @O_CREAT, align 4
  %9 = load i32, i32* @O_RDWR, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @O_APPEND, align 4
  %12 = or i32 %10, %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @g_repo, align 4
  %15 = call i32 @git_checkout_index(i32 %14, i32* null, %struct.TYPE_4__* %1)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = call i32 @check_file_contents(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_checkout_index(i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @check_file_contents(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
