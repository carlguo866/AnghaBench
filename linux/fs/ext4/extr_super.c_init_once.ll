; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_init_once.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_init_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_inode_info = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @init_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_once(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ext4_inode_info*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ext4_inode_info*
  store %struct.ext4_inode_info* %5, %struct.ext4_inode_info** %3, align 8
  %6 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %3, align 8
  %7 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %6, i32 0, i32 4
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %3, align 8
  %10 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %9, i32 0, i32 3
  %11 = call i32 @init_rwsem(i32* %10)
  %12 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %3, align 8
  %13 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %12, i32 0, i32 2
  %14 = call i32 @init_rwsem(i32* %13)
  %15 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %3, align 8
  %16 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %15, i32 0, i32 1
  %17 = call i32 @init_rwsem(i32* %16)
  %18 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %3, align 8
  %19 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %18, i32 0, i32 0
  %20 = call i32 @inode_init_once(i32* %19)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @inode_init_once(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
