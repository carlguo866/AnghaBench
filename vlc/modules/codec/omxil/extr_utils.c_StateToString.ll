; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_utils.c_StateToString.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_utils.c_StateToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StateToString.psz_names = internal global [7 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [17 x i8] c"OMX_StateInvalid\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"OMX_StateLoaded\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"OMX_StateIdle\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"OMX_StateExecuting\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"OMX_StatePause\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"OMX_StateWaitForResources\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"OMX_State unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @StateToString(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = trunc i64 %3 to i32
  %5 = zext i32 %4 to i64
  %6 = icmp ugt i64 %5, 6
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i64 6, i64* %2, align 8
  br label %8

8:                                                ; preds = %7, %1
  %9 = load i64, i64* %2, align 8
  %10 = getelementptr inbounds [7 x i8*], [7 x i8*]* @StateToString.psz_names, i64 0, i64 %9
  %11 = load i8*, i8** %10, align 8
  ret i8* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
