; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_inode.c_erofs_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_inode.c_erofs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.erofs_inode = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @erofs_iget(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.erofs_inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.inode* @erofs_iget_locked(%struct.super_block* %11, i32 %12)
  store %struct.inode* %13, %struct.inode** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = icmp ne %struct.inode* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.inode* @ERR_PTR(i32 %18)
  store %struct.inode* %19, %struct.inode** %4, align 8
  br label %49

20:                                               ; preds = %3
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @I_NEW, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %20
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = call %struct.erofs_inode* @EROFS_I(%struct.inode* %28)
  store %struct.erofs_inode* %29, %struct.erofs_inode** %10, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.erofs_inode*, %struct.erofs_inode** %10, align 8
  %32 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @erofs_fill_inode(%struct.inode* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %27
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = call i32 @unlock_new_inode(%struct.inode* %39)
  br label %46

41:                                               ; preds = %27
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = call i32 @iget_failed(%struct.inode* %42)
  %44 = load i32, i32* %9, align 4
  %45 = call %struct.inode* @ERR_PTR(i32 %44)
  store %struct.inode* %45, %struct.inode** %8, align 8
  br label %46

46:                                               ; preds = %41, %38
  br label %47

47:                                               ; preds = %46, %20
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %48, %struct.inode** %4, align 8
  br label %49

49:                                               ; preds = %47, %16
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %50
}

declare dso_local %struct.inode* @erofs_iget_locked(%struct.super_block*, i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.erofs_inode* @EROFS_I(%struct.inode*) #1

declare dso_local i32 @erofs_fill_inode(%struct.inode*, i32) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
