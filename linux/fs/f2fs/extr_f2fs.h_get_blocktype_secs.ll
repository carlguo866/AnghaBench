; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_get_blocktype_secs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_get_blocktype_secs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32)* @get_blocktype_secs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_blocktype_secs(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %8 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %11 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = mul i32 %9, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @get_pages(%struct.f2fs_sb_info* %14, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = add i32 %16, %17
  %19 = sub i32 %18, 1
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %21 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = lshr i32 %19, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %26 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = udiv i32 %24, %27
  ret i32 %28
}

declare dso_local i32 @get_pages(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
