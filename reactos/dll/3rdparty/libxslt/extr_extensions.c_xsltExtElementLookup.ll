; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extensions.c_xsltExtElementLookup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extensions.c_xsltExtElementLookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xsltExtElementLookup(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %3
  store i32* null, i32** %4, align 8
  br label %41

16:                                               ; preds = %12
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32* @xmlHashLookup2(i32* %27, i32* %28, i32* %29)
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32*, i32** %9, align 8
  store i32* %34, i32** %4, align 8
  br label %41

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %19, %16
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32* @xsltExtModuleElementLookup(i32* %37, i32* %38)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  store i32* %40, i32** %4, align 8
  br label %41

41:                                               ; preds = %36, %33, %15
  %42 = load i32*, i32** %4, align 8
  ret i32* %42
}

declare dso_local i32* @xmlHashLookup2(i32*, i32*, i32*) #1

declare dso_local i32* @xsltExtModuleElementLookup(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
