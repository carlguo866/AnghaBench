; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rewriteManip.c_contain_windowfuncs_walker.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rewriteManip.c_contain_windowfuncs_walker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WindowFunc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @contain_windowfuncs_walker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @contain_windowfuncs_walker(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %19

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @WindowFunc, align 4
  %12 = call i64 @IsA(i32* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %19

15:                                               ; preds = %9
  %16 = load i32*, i32** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @expression_tree_walker(i32* %16, i32 (i32*, i8*)* @contain_windowfuncs_walker, i8* %17)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %14, %8
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i64 @IsA(i32*, i32) #1

declare dso_local i32 @expression_tree_walker(i32*, i32 (i32*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
