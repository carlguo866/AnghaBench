; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_item.c_vlc_playlist_item_New.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_item.c_vlc_playlist_item_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @vlc_playlist_item_New(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.TYPE_4__* @malloc(i32 16)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = call i32 @vlc_atomic_rc_init(i32* %17)
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @input_item_Hold(i32* %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %3, align 8
  br label %28

28:                                               ; preds = %15, %14
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %29
}

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_atomic_rc_init(i32*) #1

declare dso_local i32 @input_item_Hold(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
