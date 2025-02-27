; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_pool_stats_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_pool_stats_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net* }
%struct.net = type { i32 }
%struct.file = type { i32 }

@nfsd_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_pool_stats_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call i32 @seq_release(%struct.inode* %7, %struct.file* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.net*, %struct.net** %13, align 8
  store %struct.net* %14, %struct.net** %6, align 8
  %15 = call i32 @mutex_lock(i32* @nfsd_mutex)
  %16 = load %struct.net*, %struct.net** %6, align 8
  %17 = call i32 @nfsd_destroy(%struct.net* %16)
  %18 = call i32 @mutex_unlock(i32* @nfsd_mutex)
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @seq_release(%struct.inode*, %struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nfsd_destroy(%struct.net*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
