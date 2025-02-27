; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_make_inode.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_make_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32 }
%struct.super_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i32)* @sel_make_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @sel_make_inode(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.inode* @new_inode(%struct.super_block* %6)
  store %struct.inode* %7, %struct.inode** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %5, align 8
  %9 = icmp ne %struct.inode* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call i32 @current_time(%struct.inode* %14)
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 2
  store i32 %15, i32* %19, align 4
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 3
  store i32 %15, i32* %21, align 4
  br label %22

22:                                               ; preds = %10, %2
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  ret %struct.inode* %23
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
