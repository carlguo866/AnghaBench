; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlform.c_htmlform_item.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlform.c_htmlform_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"GetElements failed: 0x%08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Item failed: 0x%08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32**)* @htmlform_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htmlform_item(%struct.TYPE_9__* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nsIDOMHTMLFormElement_GetElements(i32 %15, i32** %8)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i64 @NS_FAILED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @E_FAIL, align 4
  store i32 %23, i32* %4, align 4
  br label %64

24:                                               ; preds = %3
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @nsIDOMHTMLCollection_Item(i32* %25, i32 %26, i32** %9)
  store i32 %27, i32* %11, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @nsIDOMHTMLCollection_Release(i32* %28)
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @NS_FAILED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @E_FAIL, align 4
  store i32 %36, i32* %4, align 4
  br label %64

37:                                               ; preds = %24
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* @TRUE, align 4
  %48 = call i32 @get_node(i32 %45, i32* %46, i32 %47, %struct.TYPE_10__** %10)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i64 @FAILED(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %4, align 4
  br label %64

54:                                               ; preds = %40
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @nsIDOMNode_Release(i32* %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32**, i32*** %7, align 8
  store i32* %58, i32** %59, align 8
  br label %62

60:                                               ; preds = %37
  %61 = load i32**, i32*** %7, align 8
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %60, %54
  %63 = load i32, i32* @S_OK, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %52, %33, %20
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @nsIDOMHTMLFormElement_GetElements(i32, i32**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @nsIDOMHTMLCollection_Item(i32*, i32, i32**) #1

declare dso_local i32 @nsIDOMHTMLCollection_Release(i32*) #1

declare dso_local i32 @get_node(i32, i32*, i32, %struct.TYPE_10__**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @nsIDOMNode_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
