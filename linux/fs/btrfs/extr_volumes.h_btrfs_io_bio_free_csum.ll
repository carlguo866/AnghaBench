; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_volumes.h_btrfs_io_bio_free_csum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_volumes.h_btrfs_io_bio_free_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_io_bio = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_io_bio*)* @btrfs_io_bio_free_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_io_bio_free_csum(%struct.btrfs_io_bio* %0) #0 {
  %2 = alloca %struct.btrfs_io_bio*, align 8
  store %struct.btrfs_io_bio* %0, %struct.btrfs_io_bio** %2, align 8
  %3 = load %struct.btrfs_io_bio*, %struct.btrfs_io_bio** %2, align 8
  %4 = getelementptr inbounds %struct.btrfs_io_bio, %struct.btrfs_io_bio* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = load %struct.btrfs_io_bio*, %struct.btrfs_io_bio** %2, align 8
  %7 = getelementptr inbounds %struct.btrfs_io_bio, %struct.btrfs_io_bio* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %5, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.btrfs_io_bio*, %struct.btrfs_io_bio** %2, align 8
  %12 = getelementptr inbounds %struct.btrfs_io_bio, %struct.btrfs_io_bio* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @kfree(i32* %13)
  %15 = load %struct.btrfs_io_bio*, %struct.btrfs_io_bio** %2, align 8
  %16 = getelementptr inbounds %struct.btrfs_io_bio, %struct.btrfs_io_bio* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
