; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_file.c_debugfs_create_u8.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_file.c_debugfs_create_u8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@fops_u8 = common dso_local global i32 0, align 4
@fops_u8_ro = common dso_local global i32 0, align 4
@fops_u8_wo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @debugfs_create_u8(i8* %0, i32 %1, %struct.dentry* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.dentry*, %struct.dentry** %7, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call %struct.dentry* @debugfs_create_mode_unsafe(i8* %9, i32 %10, %struct.dentry* %11, i32* %12, i32* @fops_u8, i32* @fops_u8_ro, i32* @fops_u8_wo)
  ret %struct.dentry* %13
}

declare dso_local %struct.dentry* @debugfs_create_mode_unsafe(i8*, i32, %struct.dentry*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
