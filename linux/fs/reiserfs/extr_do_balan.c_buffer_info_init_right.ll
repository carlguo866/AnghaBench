; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_buffer_info_init_right.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_do_balan.c_buffer_info_init_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32* }
%struct.buffer_info = type { i32, i32, i32, %struct.tree_balance* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, %struct.buffer_info*)* @buffer_info_init_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_info_init_right(%struct.tree_balance* %0, %struct.buffer_info* %1) #0 {
  %3 = alloca %struct.tree_balance*, align 8
  %4 = alloca %struct.buffer_info*, align 8
  store %struct.tree_balance* %0, %struct.tree_balance** %3, align 8
  store %struct.buffer_info* %1, %struct.buffer_info** %4, align 8
  %5 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %6 = load %struct.buffer_info*, %struct.buffer_info** %4, align 8
  %7 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %6, i32 0, i32 3
  store %struct.tree_balance* %5, %struct.tree_balance** %7, align 8
  %8 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %9 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.buffer_info*, %struct.buffer_info** %4, align 8
  %14 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %16 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.buffer_info*, %struct.buffer_info** %4, align 8
  %21 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %23 = call i32 @get_right_neighbor_position(%struct.tree_balance* %22, i32 0)
  %24 = load %struct.buffer_info*, %struct.buffer_info** %4, align 8
  %25 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  ret void
}

declare dso_local i32 @get_right_neighbor_position(%struct.tree_balance*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
