; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_build_pcms.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_build_pcms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { i32 }

@ali_pcms = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ali*)* @snd_ali_build_pcms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ali_build_pcms(%struct.snd_ali* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ali*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_ali* %0, %struct.snd_ali** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %9 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = load i32, i32* %4, align 4
  %14 = load i32*, i32** @ali_pcms, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = icmp slt i32 %13, %15
  br label %17

17:                                               ; preds = %12, %6
  %18 = phi i1 [ false, %6 ], [ %16, %12 ]
  br i1 %18, label %19, label %35

19:                                               ; preds = %17
  %20 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32*, i32** @ali_pcms, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @snd_ali_pcm(%struct.snd_ali* %20, i32 %21, i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %36

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %6

35:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ali_pcm(%struct.snd_ali*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
