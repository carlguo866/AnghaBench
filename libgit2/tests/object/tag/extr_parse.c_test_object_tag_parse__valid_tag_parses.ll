; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tag/extr_parse.c_test_object_tag_parse__valid_tag_parses.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tag/extr_parse.c_test_object_tag_parse__valid_tag_parses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [123 x i8] c"object a8d447f68076d1520f69649bb52629941be7031f\0Atype tag\0Atag tagname\0Atagger Taggy Mr. Taggart <taggy@taggart.com>\0A\0AMessage\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"a8d447f68076d1520f69649bb52629941be7031f\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"tagname\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Taggy Mr. Taggart <taggy@taggart.com>\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tag_parse__valid_tag_parses() #0 {
  %1 = alloca i8*, align 8
  store i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = call i32 @assert_tag_parses(i8* %2, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert_tag_parses(i8*, i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
