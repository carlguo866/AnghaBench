; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_ls-remote.c_tail_match.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_ls-remote.c_tail_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @tail_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tail_match(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = icmp ne i8** %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %31

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @xstrfmt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i8* %13, i8** %7, align 8
  br label %14

14:                                               ; preds = %27, %11
  %15 = load i8**, i8*** %4, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %16, i8*** %4, align 8
  %17 = load i8*, i8** %15, align 8
  store i8* %17, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @wildmatch(i8* %20, i8* %21, i32 0)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @free(i8* %25)
  store i32 1, i32* %3, align 4
  br label %31

27:                                               ; preds = %19
  br label %14

28:                                               ; preds = %14
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @free(i8* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %24, %10
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i8* @xstrfmt(i8*, i8*) #1

declare dso_local i32 @wildmatch(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
