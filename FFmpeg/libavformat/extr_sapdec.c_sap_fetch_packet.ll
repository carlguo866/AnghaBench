; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sapdec.c_sap_fetch_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sapdec.c_sap_fetch_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.SAPState* }
%struct.SAPState = type { i32, i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32, i32 }
%struct.pollfd = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@RTP_MAX_PACKET_LENGTH = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@AVFMTCTX_NOHEADER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*)* @sap_fetch_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sap_fetch_packet(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.SAPState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pollfd, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load %struct.SAPState*, %struct.SAPState** %18, align 8
  store %struct.SAPState* %19, %struct.SAPState** %6, align 8
  %20 = load %struct.SAPState*, %struct.SAPState** %6, align 8
  %21 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ffurl_get_file_handle(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 0
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 1
  %27 = load i32, i32* @POLLIN, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 2
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 3
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @RTP_MAX_PACKET_LENGTH, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %11, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %12, align 8
  %34 = load %struct.SAPState*, %struct.SAPState** %6, align 8
  %35 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %157

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %80, %40
  br label %42

42:                                               ; preds = %41
  %43 = call i32 @poll(%struct.pollfd* %10, i32 1, i32 0)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @POLLIN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46, %42
  br label %81

53:                                               ; preds = %46
  %54 = load %struct.SAPState*, %struct.SAPState** %6, align 8
  %55 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = mul nuw i64 4, %31
  %58 = trunc i64 %57 to i32
  %59 = call i32 @ffurl_read(i32 %56, i32* %33, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp sge i32 %60, 8
  br i1 %61, label %62, label %80

62:                                               ; preds = %53
  %63 = getelementptr inbounds i32, i32* %33, i64 2
  %64 = call i64 @AV_RB16(i32* %63)
  store i64 %64, i64* %14, align 8
  %65 = getelementptr inbounds i32, i32* %33, i64 0
  %66 = load i32, i32* %65, align 16
  %67 = and i32 %66, 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = load i64, i64* %14, align 8
  %71 = load %struct.SAPState*, %struct.SAPState** %6, align 8
  %72 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.SAPState*, %struct.SAPState** %6, align 8
  %77 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %78, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %157

79:                                               ; preds = %69, %62
  br label %80

80:                                               ; preds = %79, %53
  br label %41

81:                                               ; preds = %52
  %82 = load %struct.SAPState*, %struct.SAPState** %6, align 8
  %83 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %82, i32 0, i32 2
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @av_read_frame(%struct.TYPE_11__* %84, i32* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %157

91:                                               ; preds = %81
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @AVFMTCTX_NOHEADER, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %155

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %122, %98
  %100 = load %struct.SAPState*, %struct.SAPState** %6, align 8
  %101 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %100, i32 0, i32 2
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %104, %107
  br i1 %108, label %109, label %154

109:                                              ; preds = %99
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %15, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %114 = call %struct.TYPE_9__* @avformat_new_stream(%struct.TYPE_10__* %113, i32* null)
  store %struct.TYPE_9__* %114, %struct.TYPE_9__** %16, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %116 = icmp ne %struct.TYPE_9__* %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %109
  %118 = load i32*, i32** %5, align 8
  %119 = call i32 @av_packet_unref(i32* %118)
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = call i32 @AVERROR(i32 %120)
  store i32 %121, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %157

122:                                              ; preds = %109
  %123 = load i32, i32* %15, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.SAPState*, %struct.SAPState** %6, align 8
  %130 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %129, i32 0, i32 2
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %132, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %133, i64 %135
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @avcodec_parameters_copy(i32 %128, i32 %139)
  %141 = load %struct.SAPState*, %struct.SAPState** %6, align 8
  %142 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %141, i32 0, i32 2
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %144, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %145, i64 %147
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  br label %99

154:                                              ; preds = %99
  br label %155

155:                                              ; preds = %154, %91
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %157

157:                                              ; preds = %155, %117, %89, %75, %38
  %158 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %158)
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @ffurl_get_file_handle(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @ffurl_read(i32, i32*, i32) #1

declare dso_local i64 @AV_RB16(i32*) #1

declare dso_local i32 @av_read_frame(%struct.TYPE_11__*, i32*) #1

declare dso_local %struct.TYPE_9__* @avformat_new_stream(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @av_packet_unref(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avcodec_parameters_copy(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
