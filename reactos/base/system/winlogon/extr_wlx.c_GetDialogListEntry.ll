; ModuleID = '/home/carl/AnghaBench/reactos/base/system/winlogon/extr_wlx.c_GetDialogListEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/winlogon/extr_wlx.c_GetDialogListEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }

@DialogListHead = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@DIALOG_LIST_ENTRY = common dso_local global i32 0, align 4
@Entry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Found entry: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Found no entry!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i64)* @GetDialogListEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @GetDialogListEntry(i64 %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @DialogListHead, i32 0, i32 0), align 8
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %5, align 8
  br label %7

7:                                                ; preds = %24, %1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, @DialogListHead
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = load i32, i32* @DIALOG_LIST_ENTRY, align 4
  %13 = load i32, i32* @Entry, align 4
  %14 = call %struct.TYPE_8__* @CONTAINING_RECORD(%struct.TYPE_7__* %11, i32 %12, i32 %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %4, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %10
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %2, align 8
  br label %30

24:                                               ; preds = %10
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %5, align 8
  br label %7

28:                                               ; preds = %7
  %29 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %30

30:                                               ; preds = %28, %20
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %31
}

declare dso_local %struct.TYPE_8__* @CONTAINING_RECORD(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
