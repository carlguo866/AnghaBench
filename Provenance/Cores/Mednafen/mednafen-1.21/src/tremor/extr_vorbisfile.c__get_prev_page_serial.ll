; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_vorbisfile.c__get_prev_page_serial.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_vorbisfile.c__get_prev_page_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@CHUNKSIZE = common dso_local global i32 0, align 4
@OV_EREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32*, i32, i32*, i32*)* @_get_prev_page_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_prev_page_serial(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %15, align 4
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  store i32 -1, i32* %20, align 4
  br label %22

22:                                               ; preds = %85, %6
  %23 = load i32, i32* %18, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %86

25:                                               ; preds = %22
  %26 = load i32, i32* @CHUNKSIZE, align 4
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @_seek_helper(%struct.TYPE_5__* %33, i32 %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %16, align 4
  store i32 %39, i32* %7, align 4
  br label %97

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %84, %40
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %85

47:                                               ; preds = %41
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %49, %52
  %54 = call i32 @_get_next_page(%struct.TYPE_5__* %48, i32* %14, i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* @OV_EREAD, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* @OV_EREAD, align 4
  store i32 %59, i32* %7, align 4
  br label %97

60:                                               ; preds = %47
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %85

64:                                               ; preds = %60
  %65 = call i32 @ogg_page_serialno(i32* %14)
  store i32 %65, i32* %19, align 4
  %66 = call i32 @ogg_page_granulepos(i32* %14)
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %16, align 4
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load i32, i32* %16, align 4
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %20, align 4
  %75 = load i32*, i32** %13, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %64
  %77 = load i32, i32* %19, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @_lookup_serialno(i32 %77, i32* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  store i32 -1, i32* %17, align 4
  br label %83

83:                                               ; preds = %82, %76
  br label %84

84:                                               ; preds = %83
  br label %41

85:                                               ; preds = %63, %41
  br label %22

86:                                               ; preds = %22
  %87 = load i32, i32* %17, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* %17, align 4
  store i32 %90, i32* %7, align 4
  br label %97

91:                                               ; preds = %86
  %92 = load i32, i32* %19, align 4
  %93 = load i32*, i32** %12, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %20, align 4
  %95 = load i32*, i32** %13, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %18, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %91, %89, %58, %38
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @_seek_helper(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @_get_next_page(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @ogg_page_serialno(i32*) #1

declare dso_local i32 @ogg_page_granulepos(i32*) #1

declare dso_local i32 @_lookup_serialno(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
