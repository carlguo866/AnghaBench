; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_refs_revparse__previous_head.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_refs_revparse__previous_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"@{-xyz}\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"@{-0}\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"@{-1b}\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"@{-42}\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"@{-2}\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"@{-1}\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"a4a7dce85cf63874e984719f4fdd239f5145052f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_revparse__previous_head() #0 {
  %1 = call i32 @assert_invalid_single_spec(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @assert_invalid_single_spec(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @assert_invalid_single_spec(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @test_object(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* null)
  %5 = call i32 @test_object(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %6 = call i32 @test_object(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert_invalid_single_spec(i8*) #1

declare dso_local i32 @test_object(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
