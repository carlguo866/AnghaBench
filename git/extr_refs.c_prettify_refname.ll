; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_prettify_refname.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_prettify_refname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"refs/remotes/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @prettify_refname(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i64 @skip_prefix(i8* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %2)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = call i64 @skip_prefix(i8* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %2)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @skip_prefix(i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %2)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %6, %1
  br label %15

15:                                               ; preds = %14, %10
  %16 = load i8*, i8** %2, align 8
  ret i8* %16
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
