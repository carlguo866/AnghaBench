; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_gang_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_gang_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.file = type { i32* }

@O_RDONLY = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*)* @spufs_gang_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_gang_open(%struct.path* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.path*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  %6 = call i32 @get_unused_fd_flags(i32 0)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.path*, %struct.path** %3, align 8
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = call i32 (...) @current_cred()
  %15 = call %struct.file* @dentry_open(%struct.path* %12, i32 %13, i32 %14)
  store %struct.file* %15, %struct.file** %5, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call i64 @IS_ERR(%struct.file* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @put_unused_fd(i32 %20)
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = call i32 @PTR_ERR(%struct.file* %22)
  store i32 %23, i32* %2, align 4
  br label %31

24:                                               ; preds = %11
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  store i32* @simple_dir_operations, i32** %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = call i32 @fd_install(i32 %27, %struct.file* %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %24, %19, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local %struct.file* @dentry_open(%struct.path*, i32, i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @put_unused_fd(i32) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @fd_install(i32, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
