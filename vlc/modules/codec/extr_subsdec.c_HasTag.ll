; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_subsdec.c_HasTag.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_subsdec.c_HasTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__**, i8*)* @HasTag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HasTag(%struct.TYPE_5__** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  %8 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %7, align 8
  br label %10

10:                                               ; preds = %45, %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %49

13:                                               ; preds = %10
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = call i32 @strcasecmp(i8* %14, %struct.TYPE_5__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %13
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp eq %struct.TYPE_5__* %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %29, align 8
  br label %36

30:                                               ; preds = %20
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %35, align 8
  br label %36

36:                                               ; preds = %30, %25
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = call i32 @free(%struct.TYPE_5__* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = call i32 @free(%struct.TYPE_5__* %41)
  store i32 1, i32* %3, align 4
  br label %50

43:                                               ; preds = %13
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %6, align 8
  br label %45

45:                                               ; preds = %43
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %7, align 8
  br label %10

49:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %36
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @strcasecmp(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
