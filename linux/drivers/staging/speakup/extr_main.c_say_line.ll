; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_say_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_say_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@spk_punc_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_BLANK = common dso_local global i32 0, align 4
@buf = common dso_local global i64* null, align 8
@this_speakup_key = common dso_local global i64 0, align 8
@SAY_LINE_INDENT = common dso_local global i64 0, align 8
@SPACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%zd, \00", align 1
@spk_punc_masks = common dso_local global i32* null, align 8
@spk_reading_punc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @say_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @say_line(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %6 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %7 = call i32 @get_line(%struct.vc_data* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @spk_punc_mask, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @MSG_BLANK, align 4
  %13 = call i32 @spk_msg_get(i32 %12)
  %14 = call i32 @synth_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %53

15:                                               ; preds = %1
  %16 = load i64*, i64** @buf, align 8
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i64, i64* %16, i64 %19
  store i64 10, i64* %20, align 8
  %21 = load i64, i64* @this_speakup_key, align 8
  %22 = load i64, i64* @SAY_LINE_INDENT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %15
  %25 = load i64*, i64** @buf, align 8
  store i64* %25, i64** %4, align 8
  br label %26

26:                                               ; preds = %31, %24
  %27 = load i64*, i64** %4, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SPACE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i64*, i64** %4, align 8
  %33 = getelementptr inbounds i64, i64* %32, i32 1
  store i64* %33, i64** %4, align 8
  br label %26

34:                                               ; preds = %26
  %35 = load i64*, i64** %4, align 8
  %36 = load i64*, i64** @buf, align 8
  %37 = ptrtoint i64* %35 to i64
  %38 = ptrtoint i64* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 8
  %41 = add nsw i64 %40, 1
  %42 = trunc i64 %41 to i32
  %43 = call i32 @synth_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %34, %15
  %45 = load i32*, i32** @spk_punc_masks, align 8
  %46 = load i64, i64* @spk_reading_punc, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* @spk_punc_mask, align 4
  %49 = load i64*, i64** @buf, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @spkup_write(i64* %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* @spk_punc_mask, align 4
  br label %53

53:                                               ; preds = %44, %11
  ret void
}

declare dso_local i32 @get_line(%struct.vc_data*) #1

declare dso_local i32 @synth_printf(i8*, i32) #1

declare dso_local i32 @spk_msg_get(i32) #1

declare dso_local i32 @spkup_write(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
