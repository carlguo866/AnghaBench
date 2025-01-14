; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_parse_stsd_video.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_parse_stsd_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"encoder\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Planar Y'CbCr 8-bit 4:2:0\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Sorenson H263\00", align 1
@AV_CODEC_ID_FLV1 = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_8__*, %struct.TYPE_7__*)* @mov_parse_stsd_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mov_parse_stsd_video(i32* %0, i32* %1, %struct.TYPE_8__* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca [32 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %8, align 8
  %12 = bitcast [32 x i64]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 256, i1 false)
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @avio_tell(i32* %13)
  %15 = sub nsw i64 %14, 16
  store i64 %15, i64* %10, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i8* @avio_rb16(i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i8* @avio_rb16(i32* %18)
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @avio_rb32(i32* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @avio_rb32(i32* %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @avio_rb32(i32* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i8* @avio_rb16(i32* %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i8* @avio_rb16(i32* %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @avio_rb32(i32* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @avio_rb32(i32* %42)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @avio_rb32(i32* %44)
  %46 = load i32*, i32** %6, align 8
  %47 = call i8* @avio_rb16(i32* %46)
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @avio_r8(i32* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ugt i32 %50, 31
  br i1 %51, label %52, label %53

52:                                               ; preds = %4
  store i32 31, i32* %11, align 4
  br label %53

53:                                               ; preds = %52, %4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 0
  %58 = call i32 @mov_read_mac_string(i32* %54, i32* %55, i32 %56, i64* %57, i32 256)
  %59 = load i32, i32* %11, align 4
  %60 = icmp ult i32 %59, 31
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sub i32 31, %63
  %65 = call i32 @avio_skip(i32* %62, i32 %64)
  br label %66

66:                                               ; preds = %61, %53
  %67 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 0
  %68 = load i64, i64* %67, align 16
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 0
  %74 = call i32 @av_dict_set(i32* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64* %73, i32 0)
  br label %75

75:                                               ; preds = %70, %66
  %76 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 0
  %77 = call i32 @strncmp(i64* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 25)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %75
  %80 = call i64 @MKTAG(i8 signext 73, i8 signext 52, i8 signext 50, i8 signext 48)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  store i64 %80, i64* %84, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, -2
  store i32 %90, i32* %88, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, -2
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %79, %75
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @MKTAG(i8 signext 72, i8 signext 50, i8 signext 54, i8 signext 51)
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %97
  %106 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 0
  %107 = call i32 @strncmp(i64* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 13)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @AV_CODEC_ID_FLV1, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 4
  store i32 %110, i32* %114, align 4
  br label %115

115:                                              ; preds = %109, %105, %97
  %116 = load i32*, i32** %6, align 8
  %117 = call i8* @avio_rb16(i32* %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  store i32 %118, i32* %122, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = load i64, i64* %10, align 8
  %125 = load i32, i32* @SEEK_SET, align 4
  %126 = call i32 @avio_seek(i32* %123, i64 %124, i32 %125)
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @ff_get_qtpalette(i32 %131, i32* %132, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %115
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = and i32 %143, 31
  store i32 %144, i32* %142, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  store i32 1, i32* %146, align 4
  br label %147

147:                                              ; preds = %138, %115
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @avio_tell(i32*) #2

declare dso_local i8* @avio_rb16(i32*) #2

declare dso_local i32 @avio_rb32(i32*) #2

declare dso_local i32 @avio_r8(i32*) #2

declare dso_local i32 @mov_read_mac_string(i32*, i32*, i32, i64*, i32) #2

declare dso_local i32 @avio_skip(i32*, i32) #2

declare dso_local i32 @av_dict_set(i32*, i8*, i64*, i32) #2

declare dso_local i32 @strncmp(i64*, i8*, i32) #2

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #2

declare dso_local i32 @avio_seek(i32*, i64, i32) #2

declare dso_local i64 @ff_get_qtpalette(i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
