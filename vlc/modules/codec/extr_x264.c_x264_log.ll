; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_x264.c_x264_log.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_x264.c_x264_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_MSG_ERR = common dso_local global i32 0, align 4
@VLC_MSG_WARN = common dso_local global i32 0, align 4
@VLC_MSG_INFO = common dso_local global i32 0, align 4
@VLC_MSG_DBG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32)* @x264_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x264_log(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %9, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %20 [
    i32 130, label %13
    i32 128, label %15
    i32 129, label %17
    i32 131, label %19
  ]

13:                                               ; preds = %4
  %14 = load i32, i32* @VLC_MSG_ERR, align 4
  store i32 %14, i32* %6, align 4
  br label %22

15:                                               ; preds = %4
  %16 = load i32, i32* @VLC_MSG_WARN, align 4
  store i32 %16, i32* %6, align 4
  br label %22

17:                                               ; preds = %4
  %18 = load i32, i32* @VLC_MSG_INFO, align 4
  store i32 %18, i32* %6, align 4
  br label %22

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %4, %19
  %21 = load i32, i32* @VLC_MSG_DBG, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %20, %17, %15, %13
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @msg_GenericVa(i32* %23, i32 %24, i8* %25, i32 %26)
  ret void
}

declare dso_local i32 @msg_GenericVa(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
