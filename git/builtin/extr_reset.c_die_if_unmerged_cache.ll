; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_reset.c_die_if_unmerged_cache.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_reset.c_die_if_unmerged_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"Cannot do a %s reset in the middle of a merge.\00", align 1
@reset_type_names = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @die_if_unmerged_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @die_if_unmerged_cache(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i64 (...) @is_merge()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = call i64 (...) @unmerged_cache()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %5, %1
  %9 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %10 = load i8**, i8*** @reset_type_names, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %10, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @_(i8* %14)
  %16 = call i32 @die(i32 %9, i32 %15)
  br label %17

17:                                               ; preds = %8, %5
  ret void
}

declare dso_local i64 @is_merge(...) #1

declare dso_local i64 @unmerged_cache(...) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
