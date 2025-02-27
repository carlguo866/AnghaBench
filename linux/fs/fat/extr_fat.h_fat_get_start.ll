; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_fat.h_fat_get_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_fat.h_fat_get_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdos_sb_info = type { i32 }
%struct.msdos_dir_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msdos_sb_info*, %struct.msdos_dir_entry*)* @fat_get_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_get_start(%struct.msdos_sb_info* %0, %struct.msdos_dir_entry* %1) #0 {
  %3 = alloca %struct.msdos_sb_info*, align 8
  %4 = alloca %struct.msdos_dir_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.msdos_sb_info* %0, %struct.msdos_sb_info** %3, align 8
  store %struct.msdos_dir_entry* %1, %struct.msdos_dir_entry** %4, align 8
  %6 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %4, align 8
  %7 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @le16_to_cpu(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %11 = call i64 @is_fat32(%struct.msdos_sb_info* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %4, align 8
  %15 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  %18 = shl i32 %17, 16
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %13, %2
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @is_fat32(%struct.msdos_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
