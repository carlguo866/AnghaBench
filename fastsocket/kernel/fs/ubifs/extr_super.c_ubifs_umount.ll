; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_ubifs_umount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_ubifs_umount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"un-mounting UBI device %d, volume %d\00", align 1
@ubifs_infos_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*)* @ubifs_umount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubifs_umount(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  %3 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %4 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %3, i32 0, i32 9
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 9
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dbg_gen(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %10)
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %13 = call i32 @dbg_debugfs_exit_fs(%struct.ubifs_info* %12)
  %14 = call i32 @spin_lock(i32* @ubifs_infos_lock)
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %16 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %15, i32 0, i32 8
  %17 = call i32 @list_del(i32* %16)
  %18 = call i32 @spin_unlock(i32* @ubifs_infos_lock)
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @kthread_stop(i64 %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %30 = call i32 @destroy_journal(%struct.ubifs_info* %29)
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %32 = call i32 @free_wbufs(%struct.ubifs_info* %31)
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %34 = call i32 @free_orphans(%struct.ubifs_info* %33)
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %36 = call i32 @ubifs_lpt_free(%struct.ubifs_info* %35, i32 0)
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %38 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @kfree(i32 %39)
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @kfree(i32 %43)
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @kfree(i32 %47)
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %50 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @kfree(i32 %52)
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %55 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @vfree(i32 %56)
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %59 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @vfree(i32 %60)
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %63 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @kfree(i32 %64)
  %66 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %67 = call i32 @ubifs_debugging_exit(%struct.ubifs_info* %66)
  ret void
}

declare dso_local i32 @dbg_gen(i8*, i32, i32) #1

declare dso_local i32 @dbg_debugfs_exit_fs(%struct.ubifs_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @destroy_journal(%struct.ubifs_info*) #1

declare dso_local i32 @free_wbufs(%struct.ubifs_info*) #1

declare dso_local i32 @free_orphans(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_lpt_free(%struct.ubifs_info*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @ubifs_debugging_exit(%struct.ubifs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
