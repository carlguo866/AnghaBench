; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_frame.c_dwarf_add_frame_cie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_frame.c_dwarf_add_frame_cie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i32*, i8*, i64, i8*, i32* }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_NOCOUNT = common dso_local global i64 0, align 8
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@cie_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dwarf_add_frame_cie(%struct.TYPE_7__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32* %5, i64 %6, i32* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %20 = icmp eq %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = load i32*, i32** %17, align 8
  %24 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %25 = call i32 @DWARF_SET_ERROR(%struct.TYPE_7__* %22, i32* %23, i32 %24)
  %26 = load i64, i64* @DW_DLV_NOCOUNT, align 8
  store i64 %26, i64* %9, align 8
  br label %113

27:                                               ; preds = %8
  %28 = call %struct.TYPE_8__* @calloc(i32 1, i32 4)
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %18, align 8
  %29 = icmp eq %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %32 = load i32*, i32** %17, align 8
  %33 = load i32, i32* @DW_DLE_MEMORY, align 4
  %34 = call i32 @DWARF_SET_ERROR(%struct.TYPE_7__* %31, i32* %32, i32 %33)
  %35 = load i64, i64* @DW_DLV_NOCOUNT, align 8
  store i64 %35, i64* %9, align 8
  br label %113

36:                                               ; preds = %27
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %40 = load i32, i32* @cie_next, align 4
  %41 = call i32 @STAILQ_INSERT_TAIL(i32* %38, %struct.TYPE_8__* %39, i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = sext i32 %44 to i64
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %68

51:                                               ; preds = %36
  %52 = load i8*, i8** %11, align 8
  %53 = call i64 @strdup(i8* %52)
  %54 = inttoptr i64 %53 to i32*
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 6
  store i32* %54, i32** %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 6
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %63 = load i32*, i32** %17, align 8
  %64 = load i32, i32* @DW_DLE_MEMORY, align 4
  %65 = call i32 @DWARF_SET_ERROR(%struct.TYPE_7__* %62, i32* %63, i32 %64)
  %66 = load i64, i64* @DW_DLV_NOCOUNT, align 8
  store i64 %66, i64* %9, align 8
  br label %113

67:                                               ; preds = %51
  br label %68

68:                                               ; preds = %67, %36
  %69 = load i8*, i8** %12, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 5
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  store i64 %73, i64* %75, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load i32*, i32** %15, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %109

81:                                               ; preds = %68
  %82 = load i64, i64* %16, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %81
  %85 = load i64, i64* %16, align 8
  %86 = call i32* @malloc(i64 %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  store i32* %86, i32** %88, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %84
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %95 = load i32*, i32** %17, align 8
  %96 = load i32, i32* @DW_DLE_MEMORY, align 4
  %97 = call i32 @DWARF_SET_ERROR(%struct.TYPE_7__* %94, i32* %95, i32 %96)
  %98 = load i64, i64* @DW_DLV_NOCOUNT, align 8
  store i64 %98, i64* %9, align 8
  br label %113

99:                                               ; preds = %84
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32*, i32** %15, align 8
  %104 = load i64, i64* %16, align 8
  %105 = call i32 @memcpy(i32* %102, i32* %103, i64 %104)
  %106 = load i64, i64* %16, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %99, %81, %68
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %9, align 8
  br label %113

113:                                              ; preds = %109, %93, %61, %30, %21
  %114 = load i64, i64* %9, align 8
  ret i64 %114
}

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local %struct.TYPE_8__* @calloc(i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @strdup(i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
