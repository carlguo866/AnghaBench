; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_replay_seek.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_replay_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay = type { i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @replay_seek(%struct.replay* %0, i32 %1) #0 {
  %3 = alloca %struct.replay*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.replay* %0, %struct.replay** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.replay*, %struct.replay** %3, align 8
  %9 = call i32 @replay_set_sequence_pos(%struct.replay* %8, i32 0)
  %10 = load %struct.replay*, %struct.replay** %3, align 8
  %11 = getelementptr inbounds %struct.replay, %struct.replay* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.replay*, %struct.replay** %3, align 8
  %14 = getelementptr inbounds %struct.replay, %struct.replay* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @calculate_tick_len(i32 %12, i32 %15)
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %49, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %18, %19
  %21 = load i32, i32* %6, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %46, %23
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.replay*, %struct.replay** %3, align 8
  %27 = getelementptr inbounds %struct.replay, %struct.replay* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %24
  %33 = load %struct.replay*, %struct.replay** %3, align 8
  %34 = getelementptr inbounds %struct.replay, %struct.replay* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %6, align 4
  %40 = mul nsw i32 %39, 2
  %41 = load %struct.replay*, %struct.replay** %3, align 8
  %42 = getelementptr inbounds %struct.replay, %struct.replay* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %43, 2
  %45 = call i32 @channel_update_sample_idx(i32* %38, i32 %40, i32 %44)
  br label %46

46:                                               ; preds = %32
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %24

49:                                               ; preds = %24
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load %struct.replay*, %struct.replay** %3, align 8
  %54 = call i32 @replay_tick(%struct.replay* %53)
  %55 = load %struct.replay*, %struct.replay** %3, align 8
  %56 = getelementptr inbounds %struct.replay, %struct.replay* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.replay*, %struct.replay** %3, align 8
  %59 = getelementptr inbounds %struct.replay, %struct.replay* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @calculate_tick_len(i32 %57, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %17

62:                                               ; preds = %17
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @replay_set_sequence_pos(%struct.replay*, i32) #1

declare dso_local i32 @calculate_tick_len(i32, i32) #1

declare dso_local i32 @channel_update_sample_idx(i32*, i32, i32) #1

declare dso_local i32 @replay_tick(%struct.replay*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
