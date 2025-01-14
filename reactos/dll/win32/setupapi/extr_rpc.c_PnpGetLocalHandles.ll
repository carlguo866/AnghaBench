; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_rpc.c_PnpGetLocalHandles.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_rpc.c_PnpGetLocalHandles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LocalBindingHandle = common dso_local global i32* null, align 8
@LocalStringTable = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@RPC_S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i32] [i32 80, i32 76, i32 84, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PnpGetLocalHandles(i32** %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  store i32** %0, i32*** %4, align 8
  store i32** %1, i32*** %5, align 8
  %6 = load i32*, i32** @LocalBindingHandle, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load i32**, i32*** %4, align 8
  %10 = icmp ne i32** %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32*, i32** @LocalBindingHandle, align 8
  %13 = load i32**, i32*** %4, align 8
  store i32* %12, i32** %13, align 8
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32**, i32*** %5, align 8
  %16 = icmp ne i32** %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32*, i32** @LocalStringTable, align 8
  %19 = load i32**, i32*** %5, align 8
  store i32* %18, i32** %19, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %3, align 4
  br label %52

22:                                               ; preds = %2
  %23 = call i32* (...) @pSetupStringTableInitialize()
  store i32* %23, i32** @LocalStringTable, align 8
  %24 = load i32*, i32** @LocalStringTable, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %3, align 4
  br label %52

28:                                               ; preds = %22
  %29 = call i64 @PnpBindRpc(i32* null, i32** @LocalBindingHandle)
  %30 = load i64, i64* @RPC_S_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32*, i32** @LocalStringTable, align 8
  %34 = call i32 @pSetupStringTableDestroy(i32* %33)
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %52

36:                                               ; preds = %28
  %37 = load i32*, i32** @LocalStringTable, align 8
  %38 = call i32 @pSetupStringTableAddString(i32* %37, i8* bitcast ([4 x i32]* @.str to i8*), i32 1)
  %39 = load i32**, i32*** %4, align 8
  %40 = icmp ne i32** %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32*, i32** @LocalBindingHandle, align 8
  %43 = load i32**, i32*** %4, align 8
  store i32* %42, i32** %43, align 8
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32**, i32*** %5, align 8
  %46 = icmp ne i32** %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32*, i32** @LocalStringTable, align 8
  %49 = load i32**, i32*** %5, align 8
  store i32* %48, i32** %49, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %32, %26, %20
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32* @pSetupStringTableInitialize(...) #1

declare dso_local i64 @PnpBindRpc(i32*, i32**) #1

declare dso_local i32 @pSetupStringTableDestroy(i32*) #1

declare dso_local i32 @pSetupStringTableAddString(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
