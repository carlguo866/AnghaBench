; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_wrap_mode_to_str.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_wrap_mode_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"clamp_to_border\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"clamp_to_edge\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"mirrored_repeat\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @wrap_mode_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wrap_mode_to_str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %9 [
    i32 131, label %5
    i32 130, label %6
    i32 128, label %7
    i32 129, label %8
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %11

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %11

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %11

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %11

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %11

11:                                               ; preds = %10, %8, %7, %6, %5
  %12 = load i8*, i8** %2, align 8
  ret i8* %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
