; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_read.c_read_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_read.c_read_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@MB_LEN_MAX = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EL_REFRESH = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @read_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_char(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* @MB_LEN_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %19 = load i32, i32* @errno, align 4
  store i32 %19, i32* %11, align 4
  br label %20

20:                                               ; preds = %95, %86, %44, %2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %63, %20
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i8, i8* %18, i64 %29
  %31 = call i32 @read(i32 %28, i8* %30, i64 1)
  store i32 %31, i32* %6, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %64

33:                                               ; preds = %25
  %34 = load i32, i32* @errno, align 4
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %47 [
    i32 129, label %40
    i32 128, label %44
  ]

40:                                               ; preds = %33
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = load i32, i32* @EL_REFRESH, align 4
  %43 = call i32 @el_wset(%struct.TYPE_7__* %41, i32 %42)
  br label %44

44:                                               ; preds = %33, %40
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = call i32 @sig_set(%struct.TYPE_7__* %45)
  br label %20

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i64 @read__fixio(i32 %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* @errno, align 4
  store i32 1, i32* %7, align 4
  br label %63

60:                                               ; preds = %51, %48
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* @errno, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 0, i32* %62, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %98

63:                                               ; preds = %58
  br label %25

64:                                               ; preds = %25
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32*, i32** %5, align 8
  store i32 0, i32* %68, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %98

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %97, %69
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %10, align 8
  %73 = call i32 @memset(i32* %14, i32 0, i32 4)
  %74 = load i32*, i32** %5, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @mbrtowc(i32* %74, i8* %18, i64 %75, i32* %14)
  switch i32 %76, label %96 [
    i32 -1, label %77
    i32 -2, label %87
  ]

77:                                               ; preds = %70
  %78 = load i64, i64* %10, align 8
  %79 = icmp ugt i64 %78, 1
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i64, i64* %10, align 8
  %82 = sub i64 %81, 1
  %83 = getelementptr inbounds i8, i8* %18, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 %84, i8* %85, align 16
  store i64 0, i64* %10, align 8
  br label %97

86:                                               ; preds = %77
  store i64 0, i64* %10, align 8
  br label %20

87:                                               ; preds = %70
  %88 = load i64, i64* %10, align 8
  %89 = load i32, i32* @MB_LEN_MAX, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp uge i64 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @EILSEQ, align 4
  store i32 %93, i32* @errno, align 4
  %94 = load i32*, i32** %5, align 8
  store i32 0, i32* %94, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %98

95:                                               ; preds = %87
  br label %20

96:                                               ; preds = %70
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %98

97:                                               ; preds = %80
  br label %70

98:                                               ; preds = %96, %92, %67, %60
  %99 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read(i32, i8*, i64) #2

declare dso_local i32 @el_wset(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @sig_set(%struct.TYPE_7__*) #2

declare dso_local i64 @read__fixio(i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @mbrtowc(i32*, i8*, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
