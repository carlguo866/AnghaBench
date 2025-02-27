; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_net.c_seq_release_net.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_net.c_seq_release_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seq_release_net(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.seq_file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  store %struct.seq_file* %8, %struct.seq_file** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %10 = call i32 @seq_file_net(%struct.seq_file* %9)
  %11 = call i32 @put_net(i32 %10)
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = call i32 @seq_release_private(%struct.inode* %12, %struct.file* %13)
  ret i32 0
}

declare dso_local i32 @put_net(i32) #1

declare dso_local i32 @seq_file_net(%struct.seq_file*) #1

declare dso_local i32 @seq_release_private(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
