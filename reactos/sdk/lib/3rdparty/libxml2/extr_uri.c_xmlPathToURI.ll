; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_uri.c_xmlPathToURI.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_uri.c_xmlPathToURI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlPathToURI(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %34

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32* @xmlParseURI(i8* %12)
  store i32* %13, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @xmlFreeURI(i32* %16)
  %18 = load i8*, i8** %3, align 8
  %19 = call i8* @xmlStrdup(i8* %18)
  store i8* %19, i8** %2, align 8
  br label %34

20:                                               ; preds = %11
  %21 = load i8*, i8** %3, align 8
  %22 = call i8* @xmlCanonicPath(i8* %21)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i8* null, i8** %2, align 8
  br label %34

26:                                               ; preds = %20
  %27 = call i32 @memset(%struct.TYPE_4__* %5, i32 0, i32 8)
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = call i8* @xmlSaveUri(%struct.TYPE_4__* %5)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @xmlFree(i8* %31)
  %33 = load i8*, i8** %6, align 8
  store i8* %33, i8** %2, align 8
  br label %34

34:                                               ; preds = %26, %25, %15, %10
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

declare dso_local i32* @xmlParseURI(i8*) #1

declare dso_local i32 @xmlFreeURI(i32*) #1

declare dso_local i8* @xmlStrdup(i8*) #1

declare dso_local i8* @xmlCanonicPath(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @xmlSaveUri(%struct.TYPE_4__*) #1

declare dso_local i32 @xmlFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
