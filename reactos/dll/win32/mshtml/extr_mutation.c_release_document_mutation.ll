; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_mutation.c_release_document_mutation.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_mutation.c_release_document_mutation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@IID_nsIDocument = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not get nsIDocument: %08x\0A\00", align 1
@content_utils = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_document_mutation(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = bitcast i32** %3 to i8**
  %9 = call i32 @nsIDOMHTMLDocument_QueryInterface(i32 %7, i32* @IID_nsIDocument, i8** %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @NS_FAILED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %24

16:                                               ; preds = %1
  %17 = load i32, i32* @content_utils, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @nsIContentUtils_RemoveDocumentObserver(i32 %17, i32* %18, i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @nsIDocument_Release(i32* %22)
  br label %24

24:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @nsIDOMHTMLDocument_QueryInterface(i32, i32*, i8**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @nsIContentUtils_RemoveDocumentObserver(i32, i32*, i32*) #1

declare dso_local i32 @nsIDocument_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
