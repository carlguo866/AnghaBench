; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_listselbuf.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_listselbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@selbufpos = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@pager = common dso_local global i32 0, align 4
@g_tmpfpath = common dso_local global i32 0, align 4
@F_CLI = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @listselbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @listselbuf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i64, i64* @selbufpos, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %1, align 4
  br label %34

8:                                                ; preds = %0
  %9 = call i32 (...) @create_tmp_file()
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %1, align 4
  br label %34

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @seltofile(i32 %15, i32* null)
  store i64 %16, i64* %3, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @close(i32 %17)
  %19 = load i64, i64* %3, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @selbufpos, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* @pager, align 4
  %27 = load i32, i32* @g_tmpfpath, align 4
  %28 = load i32, i32* @F_CLI, align 4
  %29 = call i32 @spawn(i32 %26, i32 %27, i32* null, i32* null, i32 %28)
  br label %30

30:                                               ; preds = %25, %21, %14
  %31 = load i32, i32* @g_tmpfpath, align 4
  %32 = call i32 @unlink(i32 %31)
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %30, %12, %6
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @create_tmp_file(...) #1

declare dso_local i64 @seltofile(i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @spawn(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
