; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_name.c__hx509_name_from_Name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_name.c__hx509_name_from_Name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hx509_name_from_Name(i32* %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  %7 = call %struct.TYPE_5__* @calloc(i32 1, i32 4)
  %8 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %8, align 8
  %9 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  store i32 %13, i32* %3, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @copy_Name(i32* %15, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = call i32 @free(%struct.TYPE_5__* %24)
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %26, align 8
  br label %27

27:                                               ; preds = %22, %14
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %12
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

declare dso_local i32 @copy_Name(i32*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
