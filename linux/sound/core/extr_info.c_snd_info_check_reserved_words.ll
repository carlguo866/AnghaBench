; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_info.c_snd_info_check_reserved_words.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_info.c_snd_info_check_reserved_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@snd_info_check_reserved_words.reserved = internal global [12 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"meminfo\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"memdebug\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"detect\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"oss\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"cards\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"timers\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"synth\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"card\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_info_check_reserved_words(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  store i8** getelementptr inbounds ([12 x i8*], [12 x i8*]* @snd_info_check_reserved_words.reserved, i64 0, i64 0), i8*** %4, align 8
  br label %5

5:                                                ; preds = %16, %1
  %6 = load i8**, i8*** %4, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strcmp(i8* %11, i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %25

16:                                               ; preds = %9
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %18, i8*** %4, align 8
  br label %5

19:                                               ; preds = %5
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %25

24:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
