; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shdocvw/extr_shlinstobj.c_InstanceObjectFactory_Constructor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shdocvw/extr_shlinstobj.c_InstanceObjectFactory_Constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__, i32*, i32, i64 }
%struct.TYPE_7__ = type { i32* }

@E_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"(RegistryPropertyBag=%p, riid=%s, ppvObject=%p)\0A\00", align 1
@InstanceObjectFactory_IClassFactoryVtbl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @InstanceObjectFactory_Constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InstanceObjectFactory_Constructor(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* @E_FAIL, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @debugstr_guid(i32 %13)
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32* %12, i32 %14, i32* %15)
  %17 = call %struct.TYPE_6__* @heap_alloc(i32 32)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %9, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %46

20:                                               ; preds = %4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32* @InstanceObjectFactory_IClassFactoryVtbl, i32** %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @IPropertyBag_AddRef(i32* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = call i32 @IClassFactory_AddRef(%struct.TYPE_7__* %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %7, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @IClassFactory_QueryInterface(%struct.TYPE_7__* %39, i32 %40, i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i32 @IClassFactory_Release(%struct.TYPE_7__* %44)
  br label %46

46:                                               ; preds = %20, %4
  %47 = load i32, i32* %10, align 4
  ret i32 %47
}

declare dso_local i32 @TRACE(i8*, i32*, i32, i32*) #1

declare dso_local i32 @debugstr_guid(i32) #1

declare dso_local %struct.TYPE_6__* @heap_alloc(i32) #1

declare dso_local i32 @IPropertyBag_AddRef(i32*) #1

declare dso_local i32 @IClassFactory_AddRef(%struct.TYPE_7__*) #1

declare dso_local i32 @IClassFactory_QueryInterface(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @IClassFactory_Release(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
