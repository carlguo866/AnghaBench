; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_errors.c_test_core_errors__free_state.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_errors.c_test_core_errors__free_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"Foo: %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Bar: %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Bar: foo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_errors__free_state() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 4, i1 false)
  %3 = call i32 (...) @git_error_clear()
  %4 = call i32 @git_error_set(i32 42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 @git_error_state_capture(%struct.TYPE_6__* %1, i32 -1)
  %6 = call i32 @cl_assert_equal_i(i32 -1, i32 %5)
  %7 = call i32 @git_error_set(i32 99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 @git_error_state_free(%struct.TYPE_6__* %1)
  %9 = call %struct.TYPE_7__* (...) @git_error_last()
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cl_assert_equal_i(i32 99, i32 %11)
  %13 = call %struct.TYPE_7__* (...) @git_error_last()
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %15)
  %17 = call i32 @git_error_state_restore(%struct.TYPE_6__* %1)
  %18 = call %struct.TYPE_7__* (...) @git_error_last()
  %19 = icmp eq %struct.TYPE_7__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @cl_assert(i32 %20)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i32 @git_error_set(i32, i8*, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_error_state_capture(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @git_error_state_free(%struct.TYPE_6__*) #2

declare dso_local %struct.TYPE_7__* @git_error_last(...) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_error_state_restore(%struct.TYPE_6__*) #2

declare dso_local i32 @cl_assert(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
