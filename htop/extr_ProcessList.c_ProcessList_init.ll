; ModuleID = '/home/carl/AnghaBench/htop/extr_ProcessList.c_ProcessList_init.c'
source_filename = "/home/carl/AnghaBench/htop/extr_ProcessList.c_ProcessList_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i8*, i32, i32*, i32*, i32, i8* }

@DEFAULT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @ProcessList_init(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* @DEFAULT_SIZE, align 4
  %13 = call i8* @Vector_new(i32* %11, i32 1, i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 9
  store i8* %13, i8** %15, align 8
  %16 = call i32 @Hashtable_new(i32 140, i32 0)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 8
  store i32 %16, i32* %18, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 7
  store i32* %19, i32** %21, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 6
  store i32* %22, i32** %24, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @DEFAULT_SIZE, align 4
  %30 = call i8* @Vector_new(i32* %28, i32 1, i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 -1, i32* %36, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  ret %struct.TYPE_4__* %37
}

declare dso_local i8* @Vector_new(i32*, i32, i32) #1

declare dso_local i32 @Hashtable_new(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
