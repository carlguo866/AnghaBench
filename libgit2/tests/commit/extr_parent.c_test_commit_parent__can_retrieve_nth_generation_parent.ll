; ModuleID = '/home/carl/AnghaBench/libgit2/tests/commit/extr_parent.c_test_commit_parent__can_retrieve_nth_generation_parent.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/commit/extr_parent.c_test_commit_parent__can_retrieve_nth_generation_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"be3563ae3f795b2b4353bcce3a527ad0a4f7f644\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"9fd738e8f7967c078dceed8190330fc8648ee56a\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"5b5b025afb0b4c913b4c338a42934a3863bf3644\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_commit_parent__can_retrieve_nth_generation_parent() #0 {
  %1 = call i32 @assert_nth_gen_parent(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @assert_nth_gen_parent(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @assert_nth_gen_parent(i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @assert_nth_gen_parent(i32 42, i8* null)
  ret void
}

declare dso_local i32 @assert_nth_gen_parent(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
