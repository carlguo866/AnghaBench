; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_mpgv.c_CheckMPEGStartCode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_mpgv.c_CheckMPEGStartCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @CheckMPEGStartCode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckMPEGStartCode(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 3
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %18 [
    i32 0, label %7
    i32 176, label %16
    i32 177, label %16
    i32 182, label %16
  ]

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 5
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 56
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %14, i32* %2, align 4
  br label %28

15:                                               ; preds = %7
  br label %26

16:                                               ; preds = %1, %1, %1
  %17 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %17, i32* %2, align 4
  br label %28

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 185
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %15
  %27 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %23, %16, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
