; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_msi_set_original_database_property.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_msi_set_original_database_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@URLIS_URL = common dso_local global i32 0, align 4
@szOriginalDatabase = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msi_set_original_database_property(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @URLIS_URL, align 4
  %11 = call i64 @UrlIsW(i8* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = load i32, i32* @szOriginalDatabase, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @msi_set_property(%struct.TYPE_4__* %14, i32 %15, i8* %16, i32 -1)
  store i32 %17, i32* %6, align 4
  br label %59

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 35
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = load i32, i32* @szOriginalDatabase, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @msi_set_property(%struct.TYPE_4__* %25, i32 %26, i8* %29, i32 -1)
  store i32 %30, i32* %6, align 4
  br label %58

31:                                               ; preds = %18
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @GetFullPathNameW(i8* %32, i32 0, i8* null, i32* null)
  store i32 %33, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = call i32 (...) @GetLastError()
  store i32 %36, i32* %3, align 4
  br label %61

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = call i8* @msi_alloc(i32 %41)
  store i8* %42, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %45, i32* %3, align 4
  br label %61

46:                                               ; preds = %37
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @GetFullPathNameW(i8* %47, i32 %48, i8* %49, i32* null)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = load i32, i32* @szOriginalDatabase, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @msi_set_property(%struct.TYPE_4__* %51, i32 %52, i8* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @msi_free(i8* %56)
  br label %58

58:                                               ; preds = %46, %24
  br label %59

59:                                               ; preds = %58, %13
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %44, %35
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @UrlIsW(i8*, i32) #1

declare dso_local i32 @msi_set_property(%struct.TYPE_4__*, i32, i8*, i32) #1

declare dso_local i32 @GetFullPathNameW(i8*, i32, i8*, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i8* @msi_alloc(i32) #1

declare dso_local i32 @msi_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
