; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xolehlp/extr_xolehlp.c_TransactionManager_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xolehlp/extr_xolehlp.c_TransactionManager_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@TransactionDispenser_Vtbl = common dso_local global i32 0, align 4
@ResourceManagerFactory2_Vtbl = common dso_local global i32 0, align 4
@TransactionImportWhereabouts_Vtbl = common dso_local global i32 0, align 4
@TransactionImport_Vtbl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @TransactionManager_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TransactionManager_Create(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 (...) @GetProcessHeap()
  %9 = call %struct.TYPE_11__* @HeapAlloc(i32 %8, i32 0, i32 40)
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %6, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %11 = icmp ne %struct.TYPE_11__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %13, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i32* @TransactionDispenser_Vtbl, i32** %17, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32* @ResourceManagerFactory2_Vtbl, i32** %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32* @TransactionImportWhereabouts_Vtbl, i32** %23, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32* @TransactionImport_Vtbl, i32** %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = call i32 @ITransactionDispenser_QueryInterface(%struct.TYPE_12__* %30, i32 %31, i8** %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = call i32 @ITransactionDispenser_Release(%struct.TYPE_12__* %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %14, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_11__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ITransactionDispenser_QueryInterface(%struct.TYPE_12__*, i32, i8**) #1

declare dso_local i32 @ITransactionDispenser_Release(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
