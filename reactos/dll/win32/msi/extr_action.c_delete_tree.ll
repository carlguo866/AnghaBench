; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_delete_tree.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_delete_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to delete subtree of %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @delete_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_tree(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @FALSE, align 4
  %13 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %14 = call i32 @open_key(i32* %9, i32 %10, i32* %11, i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %34

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @RegDeleteTreeW(i32 %18, i32* null)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @debugstr_w(i32* %23)
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @delete_key(i32* %28, i32 %29, i32* %30)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @RegCloseKey(i32 %32)
  br label %34

34:                                               ; preds = %27, %16
  ret void
}

declare dso_local i32 @open_key(i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @RegDeleteTreeW(i32, i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i64) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @delete_key(i32*, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
