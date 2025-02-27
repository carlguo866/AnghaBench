; ModuleID = '/home/carl/AnghaBench/git/extr_delta-islands.c_island_bitmap_get.c'
source_filename = "/home/carl/AnghaBench/git/extr_delta-islands.c_island_bitmap_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.island_bitmap = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.island_bitmap*, i32)* @island_bitmap_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @island_bitmap_get(%struct.island_bitmap* %0, i32 %1) #0 {
  %3 = alloca %struct.island_bitmap*, align 8
  %4 = alloca i32, align 4
  store %struct.island_bitmap* %0, %struct.island_bitmap** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.island_bitmap*, %struct.island_bitmap** %3, align 8
  %6 = getelementptr inbounds %struct.island_bitmap, %struct.island_bitmap* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @ISLAND_BITMAP_BLOCK(i32 %8)
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ISLAND_BITMAP_MASK(i32 %12)
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i64 @ISLAND_BITMAP_BLOCK(i32) #1

declare dso_local i32 @ISLAND_BITMAP_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
