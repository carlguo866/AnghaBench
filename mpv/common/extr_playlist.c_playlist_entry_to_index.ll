; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_playlist.c_playlist_entry_to_index.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_playlist.c_playlist_entry_to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist = type { %struct.playlist_entry* }
%struct.playlist_entry = type { %struct.playlist_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @playlist_entry_to_index(%struct.playlist* %0, %struct.playlist_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.playlist*, align 8
  %5 = alloca %struct.playlist_entry*, align 8
  %6 = alloca %struct.playlist_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.playlist* %0, %struct.playlist** %4, align 8
  store %struct.playlist_entry* %1, %struct.playlist_entry** %5, align 8
  %8 = load %struct.playlist*, %struct.playlist** %4, align 8
  %9 = getelementptr inbounds %struct.playlist, %struct.playlist* %8, i32 0, i32 0
  %10 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  store %struct.playlist_entry* %10, %struct.playlist_entry** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %12 = icmp ne %struct.playlist_entry* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %39

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %24, %14
  %16 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %17 = icmp ne %struct.playlist_entry* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %20 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %21 = icmp ne %struct.playlist_entry* %19, %20
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br i1 %23, label %24, label %30

24:                                               ; preds = %22
  %25 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %26 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %25, i32 0, i32 0
  %27 = load %struct.playlist_entry*, %struct.playlist_entry** %26, align 8
  store %struct.playlist_entry* %27, %struct.playlist_entry** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %15

30:                                               ; preds = %22
  %31 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %32 = load %struct.playlist_entry*, %struct.playlist_entry** %5, align 8
  %33 = icmp eq %struct.playlist_entry* %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  br label %37

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ -1, %36 ]
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
