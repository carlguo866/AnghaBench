; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sci_base_memory_descriptor_list.c_sci_mdl_get_current_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sci_base_memory_descriptor_list.c_sci_mdl_get_current_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32* }

@SCI_INVALID_HANDLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sci_mdl_get_current_entry(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = inttoptr i64 %5 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  store i32* %21, i32** %2, align 8
  br label %44

22:                                               ; preds = %1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %22
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SCI_INVALID_HANDLE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32* @sci_mdl_get_current_entry(i64 %39)
  store i32* %40, i32** %2, align 8
  br label %44

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %22
  br label %43

43:                                               ; preds = %42
  store i32* null, i32** %2, align 8
  br label %44

44:                                               ; preds = %43, %36, %14
  %45 = load i32*, i32** %2, align 8
  ret i32* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
