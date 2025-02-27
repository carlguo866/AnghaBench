; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/openpromfs/extr_inode.c_openprom_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/openpromfs/extr_inode.c_openprom_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32, i32*, i32*, i32, i32, i32 }
%struct.super_block = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@OPENPROM_ROOT_INO = common dso_local global i64 0, align 8
@openprom_inode_operations = common dso_local global i32 0, align 4
@openprom_operations = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i32)* @openprom_iget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @openprom_iget(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.inode* @iget_locked(%struct.super_block* %7, i32 %8)
  store %struct.inode* %9, %struct.inode** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = icmp ne %struct.inode* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.inode* @ERR_PTR(i32 %14)
  store %struct.inode* %15, %struct.inode** %3, align 8
  br label %53

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @I_NEW, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %16
  %24 = load i32, i32* @CURRENT_TIME, align 4
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 6
  store i32 %24, i32* %28, align 4
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 7
  store i32 %24, i32* %30, align 8
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @OPENPROM_ROOT_INO, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %23
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 4
  store i32* @openprom_inode_operations, i32** %38, align 8
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 3
  store i32* @openprom_operations, i32** %40, align 8
  %41 = load i32, i32* @S_IFDIR, align 4
  %42 = load i32, i32* @S_IRUGO, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @S_IXUGO, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %36, %23
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = call i32 @unlock_new_inode(%struct.inode* %49)
  br label %51

51:                                               ; preds = %48, %16
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %52, %struct.inode** %3, align 8
  br label %53

53:                                               ; preds = %51, %12
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %54
}

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
