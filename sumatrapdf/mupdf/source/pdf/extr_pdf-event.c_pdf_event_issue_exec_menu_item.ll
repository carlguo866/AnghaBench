; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-event.c_pdf_event_issue_exec_menu_item.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-event.c_pdf_event_issue_exec_menu_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 (i32*, %struct.TYPE_8__*, i32*, i32)* }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@PDF_DOCUMENT_EVENT_EXEC_MENU_ITEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_event_issue_exec_menu_item(i32* %0, %struct.TYPE_8__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load i32 (i32*, %struct.TYPE_8__*, i32*, i32)*, i32 (i32*, %struct.TYPE_8__*, i32*, i32)** %9, align 8
  %11 = icmp ne i32 (i32*, %struct.TYPE_8__*, i32*, i32)* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %3
  %13 = load i32, i32* @PDF_DOCUMENT_EVENT_EXEC_MENU_ITEM, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32 (i32*, %struct.TYPE_8__*, i32*, i32)*, i32 (i32*, %struct.TYPE_8__*, i32*, i32)** %19, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = bitcast %struct.TYPE_7__* %7 to i32*
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %20(i32* %21, %struct.TYPE_8__* %22, i32* %23, i32 %26)
  br label %28

28:                                               ; preds = %12, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
