; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_inseng_main.c_downloadcb_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_inseng_main.c_downloadcb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.downloadcb = type { i32, i8*, i8*, i32, i32, i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@BindStatusCallbackVtbl = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i8*, i8*, i8*, i32, %struct.downloadcb**)* @downloadcb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @downloadcb_create(%struct.TYPE_7__* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5, %struct.downloadcb** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.downloadcb**, align 8
  %16 = alloca %struct.downloadcb*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.downloadcb** %6, %struct.downloadcb*** %15, align 8
  %17 = call %struct.downloadcb* @heap_alloc_zero(i32 64)
  store %struct.downloadcb* %17, %struct.downloadcb** %16, align 8
  %18 = load %struct.downloadcb*, %struct.downloadcb** %16, align 8
  %19 = icmp ne %struct.downloadcb* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %7
  %21 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %21, i32* %8, align 4
  br label %71

22:                                               ; preds = %7
  %23 = load %struct.downloadcb*, %struct.downloadcb** %16, align 8
  %24 = getelementptr inbounds %struct.downloadcb, %struct.downloadcb* %23, i32 0, i32 9
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32* @BindStatusCallbackVtbl, i32** %25, align 8
  %26 = load %struct.downloadcb*, %struct.downloadcb** %16, align 8
  %27 = getelementptr inbounds %struct.downloadcb, %struct.downloadcb* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* @E_FAIL, align 4
  %29 = load %struct.downloadcb*, %struct.downloadcb** %16, align 8
  %30 = getelementptr inbounds %struct.downloadcb, %struct.downloadcb* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load %struct.downloadcb*, %struct.downloadcb** %16, align 8
  %33 = getelementptr inbounds %struct.downloadcb, %struct.downloadcb* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = load %struct.downloadcb*, %struct.downloadcb** %16, align 8
  %36 = getelementptr inbounds %struct.downloadcb, %struct.downloadcb* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = load %struct.downloadcb*, %struct.downloadcb** %16, align 8
  %39 = getelementptr inbounds %struct.downloadcb, %struct.downloadcb* %38, i32 0, i32 7
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %39, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.downloadcb*, %struct.downloadcb** %16, align 8
  %42 = getelementptr inbounds %struct.downloadcb, %struct.downloadcb* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.downloadcb*, %struct.downloadcb** %16, align 8
  %48 = getelementptr inbounds %struct.downloadcb, %struct.downloadcb* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.downloadcb*, %struct.downloadcb** %16, align 8
  %51 = getelementptr inbounds %struct.downloadcb, %struct.downloadcb* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @strAtoW(i8* %52)
  %54 = load %struct.downloadcb*, %struct.downloadcb** %16, align 8
  %55 = getelementptr inbounds %struct.downloadcb, %struct.downloadcb* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.downloadcb*, %struct.downloadcb** %16, align 8
  %57 = getelementptr inbounds %struct.downloadcb, %struct.downloadcb* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %22
  %61 = load %struct.downloadcb*, %struct.downloadcb** %16, align 8
  %62 = call i32 @heap_free(%struct.downloadcb* %61)
  %63 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %63, i32* %8, align 4
  br label %71

64:                                               ; preds = %22
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = call i32 @IInstallEngine2_AddRef(i32* %66)
  %68 = load %struct.downloadcb*, %struct.downloadcb** %16, align 8
  %69 = load %struct.downloadcb**, %struct.downloadcb*** %15, align 8
  store %struct.downloadcb* %68, %struct.downloadcb** %69, align 8
  %70 = load i32, i32* @S_OK, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %64, %60, %20
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local %struct.downloadcb* @heap_alloc_zero(i32) #1

declare dso_local i32 @strAtoW(i8*) #1

declare dso_local i32 @heap_free(%struct.downloadcb*) #1

declare dso_local i32 @IInstallEngine2_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
