; ModuleID = '/home/carl/AnghaBench/libgit2/tests/mailmap/extr_parsing.c_test_mailmap_parsing__string.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/mailmap/extr_parsing.c_test_mailmap_parsing__string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_mailmap = common dso_local global i32 0, align 4
@string_mailmap = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@resolved = common dso_local global i32 0, align 4
@resolved_untracked = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_mailmap_parsing__string() #0 {
  %1 = load i32, i32* @string_mailmap, align 4
  %2 = load i32, i32* @string_mailmap, align 4
  %3 = call i32 @strlen(i32 %2)
  %4 = call i32 @git_mailmap_from_buffer(i32* @g_mailmap, i32 %1, i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32, i32* @g_mailmap, align 4
  %7 = load i32, i32* @entries, align 4
  %8 = load i32, i32* @entries, align 4
  %9 = call i32 @ARRAY_SIZE(i32 %8)
  %10 = call i32 @check_mailmap_entries(i32 %6, i32 %7, i32 %9)
  %11 = load i32, i32* @g_mailmap, align 4
  %12 = load i32, i32* @resolved, align 4
  %13 = load i32, i32* @resolved, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = call i32 @check_mailmap_resolve(i32 %11, i32 %12, i32 %14)
  %16 = load i32, i32* @g_mailmap, align 4
  %17 = load i32, i32* @resolved_untracked, align 4
  %18 = load i32, i32* @resolved_untracked, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = call i32 @check_mailmap_resolve(i32 %16, i32 %17, i32 %19)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_mailmap_from_buffer(i32*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @check_mailmap_entries(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @check_mailmap_resolve(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
