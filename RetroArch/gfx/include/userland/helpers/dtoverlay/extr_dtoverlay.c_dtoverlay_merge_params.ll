; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_merge_params.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_merge_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i32, i32 }
%struct.fdt_property = type { i8* }

@FDT_ERR_BADPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"bootargs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtoverlay_merge_params(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.fdt_property*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %121, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i1 [ false, %17 ], [ %23, %21 ]
  br i1 %25, label %26, label %124

26:                                               ; preds = %24
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %9, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i8* @strrchr(i8* %34, i8 signext 47)
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* @FDT_ERR_BADPATH, align 4
  %40 = call i32 @NON_FATAL(i32 %39)
  store i32 %40, i32* %7, align 4
  br label %124

41:                                               ; preds = %26
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %13, align 4
  br label %53

46:                                               ; preds = %41
  %47 = load i8*, i8** %11, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %46, %45
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @dtoverlay_create_node(%struct.TYPE_7__* %54, i8* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %118

60:                                               ; preds = %53
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8* %62, i8** %14, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %104

66:                                               ; preds = %60
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i8*, i8** %14, align 8
  %72 = call %struct.fdt_property* @fdt_get_property_w(i32 %69, i32 %70, i8* %71, i32* %15)
  store %struct.fdt_property* %72, %struct.fdt_property** %16, align 8
  %73 = icmp ne %struct.fdt_property* %72, null
  br i1 %73, label %74, label %104

74:                                               ; preds = %66
  %75 = load i32, i32* %15, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %104

77:                                               ; preds = %74
  %78 = load %struct.fdt_property*, %struct.fdt_property** %16, align 8
  %79 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %77
  %85 = load %struct.fdt_property*, %struct.fdt_property** %16, align 8
  %86 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  store i8 32, i8* %91, align 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i8*, i8** %14, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @fdt_appendprop(i32 %94, i32 %95, i8* %96, i32 %99, i32 %102)
  store i32 %103, i32* %7, align 4
  br label %117

104:                                              ; preds = %77, %74, %66, %60
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i8*, i8** %14, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @fdt_setprop(i32 %107, i32 %108, i8* %109, i32 %112, i32 %115)
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %104, %84
  br label %120

118:                                              ; preds = %53
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %118, %117
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %8, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %17

124:                                              ; preds = %38, %24
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @NON_FATAL(i32) #1

declare dso_local i32 @dtoverlay_create_node(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.fdt_property* @fdt_get_property_w(i32, i32, i8*, i32*) #1

declare dso_local i32 @fdt_appendprop(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @fdt_setprop(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
