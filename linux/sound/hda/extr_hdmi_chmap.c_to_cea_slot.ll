; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdmi_chmap.c_to_cea_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdmi_chmap.c_to_cea_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@channel_allocations = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8)* @to_cea_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_cea_slot(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  %8 = load i8, i8* %5, align 1
  %9 = call i32 @snd_hdac_chmap_to_spk_mask(i8 zeroext %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @channel_allocations, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %11)
  %13 = icmp sge i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @channel_allocations, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 7, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %44

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %19

42:                                               ; preds = %19
  br label %43

43:                                               ; preds = %42, %15
  store i32 -1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %36, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @snd_hdac_chmap_to_spk_mask(i8 zeroext) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
