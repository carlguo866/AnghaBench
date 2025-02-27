; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_cwd_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_cwd_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.path = type { i32 }
%struct.task_struct = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.path*)* @proc_cwd_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_cwd_link(%struct.inode* %0, %struct.path* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.path*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.path* %1, %struct.path** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.task_struct* @get_proc_task(%struct.inode* %7)
  store %struct.task_struct* %8, %struct.task_struct** %5, align 8
  %9 = load i32, i32* @ENOENT, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %12 = icmp ne %struct.task_struct* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %15 = load %struct.path*, %struct.path** %4, align 8
  %16 = call i32 @get_fs_path(%struct.task_struct* %14, %struct.path* %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %18 = call i32 @put_task_struct(%struct.task_struct* %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load i32, i32* %6, align 4
  ret i32 %20
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local i32 @get_fs_path(%struct.task_struct*, %struct.path*, i32) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
