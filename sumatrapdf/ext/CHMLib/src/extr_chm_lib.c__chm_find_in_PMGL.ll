; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c__chm_find_in_PMGL.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c__chm_find_in_PMGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmPmglHeader = type { i32* }

@CHM_MAX_PATHLEN = common dso_local global i32 0, align 4
@_CHM_PMGL_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i8*)* @_chm_find_in_PMGL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_chm_find_in_PMGL(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.chmPmglHeader, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %17 = load i32, i32* @CHM_MAX_PATHLEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load i32*, i32** %5, align 8
  store i32* %22, i32** %11, align 8
  %23 = load i32, i32* @_CHM_PMGL_LEN, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @_unmarshal_pmgl_header(i32** %11, i32* %9, i32 %24, %struct.chmPmglHeader* %8)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  store i32 1, i32* %16, align 4
  br label %65

28:                                               ; preds = %3
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = getelementptr inbounds %struct.chmPmglHeader, %struct.chmPmglHeader* %8, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = ptrtoint i32* %32 to i64
  %36 = ptrtoint i32* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 4
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %10, align 8
  br label %40

40:                                               ; preds = %62, %28
  %41 = load i32*, i32** %11, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = icmp ult i32* %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load i32*, i32** %11, align 8
  store i32* %45, i32** %12, align 8
  %46 = call i32 @_chm_parse_cword(i32** %11)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @CHM_MAX_PATHLEN, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32* null, i32** %4, align 8
  store i32 1, i32* %16, align 4
  br label %65

51:                                               ; preds = %44
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @_chm_parse_UTF8(i32** %11, i32 %52, i8* %21)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store i32* null, i32** %4, align 8
  store i32 1, i32* %16, align 4
  br label %65

56:                                               ; preds = %51
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strcasecmp(i8* %21, i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load i32*, i32** %12, align 8
  store i32* %61, i32** %4, align 8
  store i32 1, i32* %16, align 4
  br label %65

62:                                               ; preds = %56
  %63 = call i32 @_chm_skip_PMGL_entry_data(i32** %11)
  br label %40

64:                                               ; preds = %40
  store i32* null, i32** %4, align 8
  store i32 1, i32* %16, align 4
  br label %65

65:                                               ; preds = %64, %60, %55, %50, %27
  %66 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32*, i32** %4, align 8
  ret i32* %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_unmarshal_pmgl_header(i32**, i32*, i32, %struct.chmPmglHeader*) #2

declare dso_local i32 @_chm_parse_cword(i32**) #2

declare dso_local i32 @_chm_parse_UTF8(i32**, i32, i8*) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @_chm_skip_PMGL_entry_data(i32**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
