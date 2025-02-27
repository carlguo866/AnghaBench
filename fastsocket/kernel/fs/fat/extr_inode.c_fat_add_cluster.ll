; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_inode.c_fat_add_cluster.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_inode.c_fat_add_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @fat_add_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_add_cluster(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call i32 @fat_alloc_clusters(%struct.inode* %6, i32* %5, i32 1)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @fat_chain_add(%struct.inode* %13, i32 %14, i32 1)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @fat_free_clusters(%struct.inode* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %12
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @fat_alloc_clusters(%struct.inode*, i32*, i32) #1

declare dso_local i32 @fat_chain_add(%struct.inode*, i32, i32) #1

declare dso_local i32 @fat_free_clusters(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
