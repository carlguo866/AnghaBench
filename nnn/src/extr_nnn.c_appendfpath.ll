; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_appendfpath.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_appendfpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@selbufpos = common dso_local global i64 0, align 8
@selbuflen = common dso_local global i64 0, align 8
@PATH_MAX = common dso_local global i64 0, align 8
@pselbuf = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @appendfpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @appendfpath(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* @selbufpos, align 8
  %6 = load i64, i64* @selbuflen, align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = add i64 %9, 3
  %11 = load i64, i64* @selbuflen, align 8
  %12 = load i64, i64* @selbufpos, align 8
  %13 = sub nsw i64 %11, %12
  %14 = icmp ugt i64 %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %8, %2
  %16 = load i64, i64* @PATH_MAX, align 8
  %17 = load i64, i64* @selbuflen, align 8
  %18 = add nsw i64 %17, %16
  store i64 %18, i64* @selbuflen, align 8
  %19 = load i64, i64* @pselbuf, align 8
  %20 = load i64, i64* @selbuflen, align 8
  %21 = call i64 @xrealloc(i64 %19, i64 %20)
  store i64 %21, i64* @pselbuf, align 8
  %22 = load i64, i64* @pselbuf, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = call i32 (...) @errexit()
  br label %26

26:                                               ; preds = %24, %15
  br label %27

27:                                               ; preds = %26, %8
  %28 = load i64, i64* @pselbuf, align 8
  %29 = load i64, i64* @selbufpos, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i8*, i8** %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @xstrlcpy(i64 %30, i8* %31, i64 %32)
  %34 = load i64, i64* @selbufpos, align 8
  %35 = add nsw i64 %34, %33
  store i64 %35, i64* @selbufpos, align 8
  ret void
}

declare dso_local i64 @xrealloc(i64, i64) #1

declare dso_local i32 @errexit(...) #1

declare dso_local i64 @xstrlcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
