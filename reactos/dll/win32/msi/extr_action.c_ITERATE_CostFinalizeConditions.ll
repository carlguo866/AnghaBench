; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ITERATE_CostFinalizeConditions.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ITERATE_CostFinalizeConditions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"FAILED to find loaded feature %s\0A\00", align 1
@MSICONDITION_TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Resetting feature %s to level %i\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @ITERATE_CostFinalizeConditions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ITERATE_CostFinalizeConditions(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @MSI_RecordGetString(i32* %11, i32 1)
  store i32 %12, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.TYPE_3__* @msi_get_loaded_feature(i32* %13, i32 %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %7, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @debugstr_w(i32 %19)
  %21 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %41

22:                                               ; preds = %2
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @MSI_RecordGetString(i32* %23, i32 3)
  store i32 %24, i32* %8, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @MSI_EvaluateConditionW(i32* %25, i32 %26)
  %28 = load i64, i64* @MSICONDITION_TRUE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @MSI_RecordGetInteger(i32* %31, i32 2)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @debugstr_w(i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %30, %22
  br label %41

41:                                               ; preds = %40, %18
  %42 = load i32, i32* @ERROR_SUCCESS, align 4
  ret i32 %42
}

declare dso_local i32 @MSI_RecordGetString(i32*, i32) #1

declare dso_local %struct.TYPE_3__* @msi_get_loaded_feature(i32*, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i64 @MSI_EvaluateConditionW(i32*, i32) #1

declare dso_local i32 @MSI_RecordGetInteger(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
