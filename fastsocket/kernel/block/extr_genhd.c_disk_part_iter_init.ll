; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_disk_part_iter_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_disk_part_iter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_part_iter = type { i32, i32, i32*, %struct.gendisk* }
%struct.gendisk = type { i32 }
%struct.disk_part_tbl = type { i32 }

@DISK_PITER_REVERSE = common dso_local global i32 0, align 4
@DISK_PITER_INCL_PART0 = common dso_local global i32 0, align 4
@DISK_PITER_INCL_EMPTY_PART0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disk_part_iter_init(%struct.disk_part_iter* %0, %struct.gendisk* %1, i32 %2) #0 {
  %4 = alloca %struct.disk_part_iter*, align 8
  %5 = alloca %struct.gendisk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.disk_part_tbl*, align 8
  store %struct.disk_part_iter* %0, %struct.disk_part_iter** %4, align 8
  store %struct.gendisk* %1, %struct.gendisk** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %10 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.disk_part_tbl* @rcu_dereference(i32 %11)
  store %struct.disk_part_tbl* %12, %struct.disk_part_tbl** %7, align 8
  %13 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %14 = load %struct.disk_part_iter*, %struct.disk_part_iter** %4, align 8
  %15 = getelementptr inbounds %struct.disk_part_iter, %struct.disk_part_iter* %14, i32 0, i32 3
  store %struct.gendisk* %13, %struct.gendisk** %15, align 8
  %16 = load %struct.disk_part_iter*, %struct.disk_part_iter** %4, align 8
  %17 = getelementptr inbounds %struct.disk_part_iter, %struct.disk_part_iter* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DISK_PITER_REVERSE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %7, align 8
  %24 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.disk_part_iter*, %struct.disk_part_iter** %4, align 8
  %28 = getelementptr inbounds %struct.disk_part_iter, %struct.disk_part_iter* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %43

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @DISK_PITER_INCL_PART0, align 4
  %32 = load i32, i32* @DISK_PITER_INCL_EMPTY_PART0, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.disk_part_iter*, %struct.disk_part_iter** %4, align 8
  %38 = getelementptr inbounds %struct.disk_part_iter, %struct.disk_part_iter* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %42

39:                                               ; preds = %29
  %40 = load %struct.disk_part_iter*, %struct.disk_part_iter** %4, align 8
  %41 = getelementptr inbounds %struct.disk_part_iter, %struct.disk_part_iter* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %22
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.disk_part_iter*, %struct.disk_part_iter** %4, align 8
  %46 = getelementptr inbounds %struct.disk_part_iter, %struct.disk_part_iter* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.disk_part_tbl* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
