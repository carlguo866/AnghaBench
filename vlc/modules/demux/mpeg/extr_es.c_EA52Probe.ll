; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_es.c_EA52Probe.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_es.c_EA52Probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"eac3\00", align 1
@__const.EA52Probe.ppsz_name = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@WAVE_FORMAT_PCM = common dso_local global i32 0, align 4
@WAVE_FORMAT_A52 = common dso_local global i32 0, align 4
@WAVE_FORMAT_UNKNOWN = common dso_local global i32 0, align 4
@EA52CheckSyncProbe = common dso_local global i32 0, align 4
@VLC_A52_MIN_HEADER_SIZE = common dso_local global i64 0, align 8
@WAV_EXTRA_PROBE_SIZE = common dso_local global i32 0, align 4
@GenericFormatCheck = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @EA52Probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EA52Probe(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [2 x i8*], align 16
  %6 = alloca [3 x i32], align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = bitcast [2 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([2 x i8*]* @__const.EA52Probe.ppsz_name to i8*), i64 16, i1 false)
  %8 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %9 = load i32, i32* @WAVE_FORMAT_PCM, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* @WAVE_FORMAT_A52, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @WAVE_FORMAT_UNKNOWN, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %17 = load i32, i32* @EA52CheckSyncProbe, align 4
  %18 = load i64, i64* @VLC_A52_MIN_HEADER_SIZE, align 8
  %19 = load i64, i64* @VLC_A52_MIN_HEADER_SIZE, align 8
  %20 = add nsw i64 1920, %19
  %21 = add nsw i64 %20, 1
  %22 = load i32, i32* @WAV_EXTRA_PROBE_SIZE, align 4
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %24 = load i32, i32* @GenericFormatCheck, align 4
  %25 = call i32 @GenericProbe(i32* %14, i32* %15, i8** %16, i32 %17, i64 %18, i64 %21, i32 %22, i32 1, i32* %23, i32 %24)
  ret i32 %25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GenericProbe(i32*, i32*, i8**, i32, i64, i64, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
