; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/backend/extr_mempack.c_test_odb_backend_mempack__write_succeeds.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/backend/extr_mempack.c_test_odb_backend_mempack__write_succeeds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"data\00", align 1
@_oid = common dso_local global i32 0, align 4
@_odb = common dso_local global i32 0, align 4
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@_obj = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_backend_mempack__write_succeeds() #0 {
  %1 = alloca i8*, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %2 = load i32, i32* @_odb, align 4
  %3 = load i8*, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = call i64 @strlen(i8* %4)
  %6 = add nsw i64 %5, 1
  %7 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %8 = call i32 @git_odb_write(i32* @_oid, i32 %2, i8* %3, i64 %6, i32 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @_odb, align 4
  %11 = call i32 @git_odb_read(i32* @_obj, i32 %10, i32* @_oid)
  %12 = call i32 @cl_git_pass(i32 %11)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_odb_write(i32*, i32, i8*, i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @git_odb_read(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
