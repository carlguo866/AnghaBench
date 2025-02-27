; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_create_metadata_reader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_create_metadata_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IWICMetadataReader = common dso_local global i32 0, align 4
@IID_IWICPersistStream = common dso_local global i32 0, align 4
@WICPersistOptionDefault = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32 (i32*, i8**)*, i32**)* @create_metadata_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_metadata_reader(i8* %0, i32 %1, i32 (i32*, i8**)* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i32*, i8**)*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i32*, i8**)* %2, i32 (i32*, i8**)** %8, align 8
  store i32** %3, i32*** %9, align 8
  %14 = load i32 (i32*, i8**)*, i32 (i32*, i8**)** %8, align 8
  %15 = bitcast i32** %11 to i8**
  %16 = call i32 %14(i32* @IID_IWICMetadataReader, i8** %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @FAILED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %5, align 4
  br label %48

22:                                               ; preds = %4
  %23 = load i32*, i32** %11, align 8
  %24 = bitcast i32** %12 to i8**
  %25 = call i32 @IWICMetadataReader_QueryInterface(i32* %23, i32* @IID_IWICPersistStream, i8** %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @IWICMetadataReader_Release(i32* %30)
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %48

33:                                               ; preds = %22
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32* @create_stream(i8* %34, i32 %35)
  store i32* %36, i32** %13, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* @WICPersistOptionDefault, align 4
  %40 = call i32 @IWICPersistStream_LoadEx(i32* %37, i32* %38, i32* null, i32 %39)
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @IStream_Release(i32* %41)
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @IWICPersistStream_Release(i32* %43)
  %45 = load i32*, i32** %11, align 8
  %46 = load i32**, i32*** %9, align 8
  store i32* %45, i32** %46, align 8
  %47 = load i32, i32* @S_OK, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %33, %29, %20
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IWICMetadataReader_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IWICMetadataReader_Release(i32*) #1

declare dso_local i32* @create_stream(i8*, i32) #1

declare dso_local i32 @IWICPersistStream_LoadEx(i32*, i32*, i32*, i32) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @IWICPersistStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
