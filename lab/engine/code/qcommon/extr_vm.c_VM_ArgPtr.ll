; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm.c_VM_ArgPtr.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm.c_VM_ArgPtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@currentVM = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @VM_ArgPtr(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %34

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @currentVM, align 8
  %9 = icmp eq %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i8* null, i8** %2, align 8
  br label %34

11:                                               ; preds = %7
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @currentVM, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @currentVM, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = add nsw i64 %19, %20
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %2, align 8
  br label %34

23:                                               ; preds = %11
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @currentVM, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @currentVM, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %27, %30
  %32 = add nsw i64 %26, %31
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %2, align 8
  br label %34

34:                                               ; preds = %23, %16, %10, %6
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
