; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_inode.c_jfs_write_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_inode.c_jfs_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@jfs_get_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**)* @jfs_write_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_write_begin(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page** %5, %struct.page*** %13, align 8
  store i8** %6, i8*** %14, align 8
  %16 = load %struct.address_space*, %struct.address_space** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load %struct.page**, %struct.page*** %13, align 8
  %21 = load i8**, i8*** %14, align 8
  %22 = load i32, i32* @jfs_get_block, align 4
  %23 = call i32 @nobh_write_begin(%struct.address_space* %16, i32 %17, i32 %18, i32 %19, %struct.page** %20, i8** %21, i32 %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %7
  %28 = load %struct.address_space*, %struct.address_space** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = add i32 %29, %30
  %32 = call i32 @jfs_write_failed(%struct.address_space* %28, i32 %31)
  br label %33

33:                                               ; preds = %27, %7
  %34 = load i32, i32* %15, align 4
  ret i32 %34
}

declare dso_local i32 @nobh_write_begin(%struct.address_space*, i32, i32, i32, %struct.page**, i8**, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @jfs_write_failed(%struct.address_space*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
