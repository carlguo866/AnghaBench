; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemdisp/extr_locator.c_SWbemProperty_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemdisp/extr_locator.c_SWbemProperty_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.property = type { i32, %struct.TYPE_3__, i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"%p, %p\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@property_vtbl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"returning iface %p\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_3__**)* @SWbemProperty_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SWbemProperty_create(i32* %0, i32 %1, %struct.TYPE_3__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__**, align 8
  %8 = alloca %struct.property*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__** %2, %struct.TYPE_3__*** %7, align 8
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__** %9, i32* %10)
  %12 = call %struct.property* @heap_alloc(i32 32)
  store %struct.property* %12, %struct.property** %8, align 8
  %13 = icmp ne %struct.property* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %15, i32* %4, align 4
  br label %42

16:                                               ; preds = %3
  %17 = load %struct.property*, %struct.property** %8, align 8
  %18 = getelementptr inbounds %struct.property, %struct.property* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32* @property_vtbl, i32** %19, align 8
  %20 = load %struct.property*, %struct.property** %8, align 8
  %21 = getelementptr inbounds %struct.property, %struct.property* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.property*, %struct.property** %8, align 8
  %24 = getelementptr inbounds %struct.property, %struct.property* %23, i32 0, i32 3
  store i32* %22, i32** %24, align 8
  %25 = load %struct.property*, %struct.property** %8, align 8
  %26 = getelementptr inbounds %struct.property, %struct.property* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @IWbemClassObject_AddRef(i32* %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @SysStringLen(i32 %30)
  %32 = call i32 @SysAllocStringLen(i32 %29, i32 %31)
  %33 = load %struct.property*, %struct.property** %8, align 8
  %34 = getelementptr inbounds %struct.property, %struct.property* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.property*, %struct.property** %8, align 8
  %36 = getelementptr inbounds %struct.property, %struct.property* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %37, align 8
  %38 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* %39)
  %41 = load i32, i32* @S_OK, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %16, %14
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.property* @heap_alloc(i32) #1

declare dso_local i32 @IWbemClassObject_AddRef(i32*) #1

declare dso_local i32 @SysAllocStringLen(i32, i32) #1

declare dso_local i32 @SysStringLen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
