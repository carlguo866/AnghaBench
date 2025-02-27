; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_root-tree.c_btrfs_set_root_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_root-tree.c_btrfs_set_root_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root_item = type { i32 }
%struct.extent_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_set_root_node(%struct.btrfs_root_item* %0, %struct.extent_buffer* %1) #0 {
  %3 = alloca %struct.btrfs_root_item*, align 8
  %4 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_root_item* %0, %struct.btrfs_root_item** %3, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %4, align 8
  %5 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %3, align 8
  %6 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @btrfs_set_root_bytenr(%struct.btrfs_root_item* %5, i32 %8)
  %10 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %3, align 8
  %11 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %12 = call i32 @btrfs_header_level(%struct.extent_buffer* %11)
  %13 = call i32 @btrfs_set_root_level(%struct.btrfs_root_item* %10, i32 %12)
  %14 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %3, align 8
  %15 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %16 = call i32 @btrfs_header_generation(%struct.extent_buffer* %15)
  %17 = call i32 @btrfs_set_root_generation(%struct.btrfs_root_item* %14, i32 %16)
  ret void
}

declare dso_local i32 @btrfs_set_root_bytenr(%struct.btrfs_root_item*, i32) #1

declare dso_local i32 @btrfs_set_root_level(%struct.btrfs_root_item*, i32) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_root_generation(%struct.btrfs_root_item*, i32) #1

declare dso_local i32 @btrfs_header_generation(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
