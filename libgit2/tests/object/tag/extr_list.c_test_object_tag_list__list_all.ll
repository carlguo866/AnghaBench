; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tag/extr_list.c_test_object_tag_list__list_all.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tag/extr_list.c_test_object_tag_list__list_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tag_list__list_all() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = load i32, i32* @g_repo, align 4
  %3 = call i32 @git_tag_list(%struct.TYPE_4__* %1, i32 %2)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = call i32 @cl_assert_equal_i(i32 %7, i32 6)
  %9 = call i32 @git_strarray_free(%struct.TYPE_4__* %1)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_tag_list(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_strarray_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
