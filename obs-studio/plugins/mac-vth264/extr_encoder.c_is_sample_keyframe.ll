; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_is_sample_keyframe.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_is_sample_keyframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kCMSampleAttachmentKey_DependsOnOthers = common dso_local global i32 0, align 4
@kCFBooleanFalse = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_sample_keyframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_sample_keyframe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32* @CMSampleBufferGetSampleAttachmentsArray(i32 %7, i32 0)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @CFArrayGetValueAtIndex(i32* %12, i32 0)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* @kCMSampleAttachmentKey_DependsOnOthers, align 4
  %16 = call i64 @CFDictionaryGetValue(i64 %14, i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @kCFBooleanFalse, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %11
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32* @CMSampleBufferGetSampleAttachmentsArray(i32, i32) #1

declare dso_local i64 @CFArrayGetValueAtIndex(i32*, i32) #1

declare dso_local i64 @CFDictionaryGetValue(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
