; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_encoder.c_add_av_option_float.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_encoder.c_add_av_option_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to set encoder option %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, i8*, float)* @add_av_option_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_av_option_float(i32* %0, i32** %1, i8* %2, float %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca float, align 4
  %9 = alloca [128 x i8], align 16
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i8* %2, i8** %7, align 8
  store float %3, float* %8, align 4
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %11 = load float, float* %8, align 4
  %12 = call i64 @snprintf(i8* %10, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), float %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %25

15:                                               ; preds = %4
  %16 = load i32**, i32*** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %19 = call i64 @av_dict_set(i32** %16, i8* %17, i8* %18, i32 0)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32*, i32** %5, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @msg_Warn(i32* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %14, %21, %15
  ret void
}

declare dso_local i64 @snprintf(i8*, i32, i8*, float) #1

declare dso_local i64 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
