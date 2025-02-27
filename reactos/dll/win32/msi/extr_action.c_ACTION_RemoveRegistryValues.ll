; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ACTION_RemoveRegistryValues.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ACTION_RemoveRegistryValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ACTION_RemoveRegistryValues.registry_query = internal constant [25 x i8] c"SELECT * FROM `Registry`\00", align 16
@ACTION_RemoveRegistryValues.remove_registry_query = internal constant [31 x i8] c"SELECT * FROM `RemoveRegistry`\00", align 16
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ITERATE_RemoveRegistryValuesOnUninstall = common dso_local global i32 0, align 4
@ITERATE_RemoveRegistryValuesOnInstall = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*)* @ACTION_RemoveRegistryValues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ACTION_RemoveRegistryValues(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @MSI_DatabaseOpenViewW(i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ACTION_RemoveRegistryValues.registry_query, i64 0, i64 0), %struct.TYPE_7__** %4)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @ERROR_SUCCESS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = load i32, i32* @ITERATE_RemoveRegistryValuesOnUninstall, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = call i64 @MSI_IterateRecords(%struct.TYPE_7__* %14, i32* null, i32 %15, %struct.TYPE_8__* %16)
  store i64 %17, i64* %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = call i32 @msiobj_release(i32* %19)
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = load i64, i64* %5, align 8
  store i64 %25, i64* %2, align 8
  br label %51

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @MSI_DatabaseOpenViewW(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @ACTION_RemoveRegistryValues.remove_registry_query, i64 0, i64 0), %struct.TYPE_7__** %4)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @ERROR_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %27
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = load i32, i32* @ITERATE_RemoveRegistryValuesOnInstall, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = call i64 @MSI_IterateRecords(%struct.TYPE_7__* %36, i32* null, i32 %37, %struct.TYPE_8__* %38)
  store i64 %39, i64* %5, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = call i32 @msiobj_release(i32* %41)
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i64, i64* %5, align 8
  store i64 %47, i64* %2, align 8
  br label %51

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48, %27
  %50 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %50, i64* %2, align 8
  br label %51

51:                                               ; preds = %49, %46, %24
  %52 = load i64, i64* %2, align 8
  ret i64 %52
}

declare dso_local i64 @MSI_DatabaseOpenViewW(i32, i8*, %struct.TYPE_7__**) #1

declare dso_local i64 @MSI_IterateRecords(%struct.TYPE_7__*, i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
