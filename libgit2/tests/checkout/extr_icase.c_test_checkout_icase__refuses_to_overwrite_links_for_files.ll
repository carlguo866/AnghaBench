; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_icase.c_test_checkout_icase__refuses_to_overwrite_links_for_files.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_icase.c_test_checkout_icase__refuses_to_overwrite_links_for_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_RECREATE_MISSING = common dso_local global i32 0, align 4
@checkout_opts = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"../tmp\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"testrepo/BRANCH_FILE.txt\00", align 1
@obj = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_icase__refuses_to_overwrite_links_for_files() #0 {
  %1 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %2 = load i32, i32* @GIT_CHECKOUT_RECREATE_MISSING, align 4
  %3 = or i32 %1, %2
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @checkout_opts, i32 0, i32 0), align 4
  %4 = load i32, i32* @repo, align 4
  %5 = call i32 @symlink_or_fake(i32 %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @cl_must_pass(i32 %5)
  %7 = load i32, i32* @repo, align 4
  %8 = load i32, i32* @obj, align 4
  %9 = call i32 @git_checkout_tree(i32 %7, i32 %8, %struct.TYPE_3__* @checkout_opts)
  %10 = call i32 @cl_git_fail(i32 %9)
  %11 = call i32 @git_path_exists(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @cl_assert(i32 %14)
  %16 = call i32 @assert_name_is(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @symlink_or_fake(i32, i8*, i8*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_checkout_tree(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_path_exists(i8*) #1

declare dso_local i32 @assert_name_is(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
