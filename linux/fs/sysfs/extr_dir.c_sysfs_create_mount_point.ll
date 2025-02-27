; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_dir.c_sysfs_create_mount_point.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_dir.c_sysfs_create_mount_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { %struct.kernfs_node* }
%struct.kernfs_node = type { i32 }

@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysfs_create_mount_point(%struct.kobject* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca %struct.kernfs_node*, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.kobject*, %struct.kobject** %4, align 8
  %9 = getelementptr inbounds %struct.kobject, %struct.kobject* %8, i32 0, i32 0
  %10 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  store %struct.kernfs_node* %10, %struct.kernfs_node** %7, align 8
  %11 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.kernfs_node* @kernfs_create_empty_dir(%struct.kernfs_node* %11, i8* %12)
  store %struct.kernfs_node* %13, %struct.kernfs_node** %6, align 8
  %14 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %15 = call i64 @IS_ERR(%struct.kernfs_node* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %19 = call i32 @PTR_ERR(%struct.kernfs_node* %18)
  %20 = load i32, i32* @EEXIST, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @sysfs_warn_dup(%struct.kernfs_node* %24, i8* %25)
  br label %27

27:                                               ; preds = %23, %17
  %28 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %29 = call i32 @PTR_ERR(%struct.kernfs_node* %28)
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.kernfs_node* @kernfs_create_empty_dir(%struct.kernfs_node*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.kernfs_node*) #1

declare dso_local i32 @PTR_ERR(%struct.kernfs_node*) #1

declare dso_local i32 @sysfs_warn_dup(%struct.kernfs_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
