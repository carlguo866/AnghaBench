; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_print_frame_local_vars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_print_frame_local_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.ui_file = type { i32 }
%struct.block = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"No symbol table info available.\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"No locals.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i32, %struct.ui_file*)* @print_frame_local_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_frame_local_vars(%struct.frame_info* %0, i32 %1, %struct.ui_file* %2) #0 {
  %4 = alloca %struct.frame_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca %struct.block*, align 8
  %8 = alloca i32, align 4
  store %struct.frame_info* %0, %struct.frame_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ui_file* %2, %struct.ui_file** %6, align 8
  %9 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %10 = call %struct.block* @get_frame_block(%struct.frame_info* %9, i32 0)
  store %struct.block* %10, %struct.block** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.block*, %struct.block** %7, align 8
  %12 = icmp eq %struct.block* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %15 = call i32 @fprintf_filtered(%struct.ui_file* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %42

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %33, %16
  %18 = load %struct.block*, %struct.block** %7, align 8
  %19 = icmp ne %struct.block* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load %struct.block*, %struct.block** %7, align 8
  %22 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %25 = call i64 @print_block_frame_locals(%struct.block* %21, %struct.frame_info* %22, i32 %23, %struct.ui_file* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 1, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load %struct.block*, %struct.block** %7, align 8
  %30 = call i64 @BLOCK_FUNCTION(%struct.block* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %36

33:                                               ; preds = %28
  %34 = load %struct.block*, %struct.block** %7, align 8
  %35 = call %struct.block* @BLOCK_SUPERBLOCK(%struct.block* %34)
  store %struct.block* %35, %struct.block** %7, align 8
  br label %17

36:                                               ; preds = %32, %17
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %41 = call i32 @fprintf_filtered(%struct.ui_file* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %13, %39, %36
  ret void
}

declare dso_local %struct.block* @get_frame_block(%struct.frame_info*, i32) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

declare dso_local i64 @print_block_frame_locals(%struct.block*, %struct.frame_info*, i32, %struct.ui_file*) #1

declare dso_local i64 @BLOCK_FUNCTION(%struct.block*) #1

declare dso_local %struct.block* @BLOCK_SUPERBLOCK(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
