; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.h_is_mddev_broken.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.h_is_mddev_broken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GENHD_FL_UP = common dso_local global i32 0, align 4
@MD_BROKEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"md: %s: %s array has a missing/failed member\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_rdev*, i8*)* @is_mddev_broken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_mddev_broken(%struct.md_rdev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.md_rdev* %0, %struct.md_rdev** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %8 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @GENHD_FL_UP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @MD_BROKEN, align 4
  %20 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %21 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i32 @test_and_set_bit(i32 %19, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %18
  %27 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %28 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = call i32 @mdname(%struct.TYPE_6__* %29)
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %31)
  br label %33

33:                                               ; preds = %26, %18
  store i32 1, i32* %3, align 4
  br label %35

34:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @pr_warn(i8*, i32, i8*) #1

declare dso_local i32 @mdname(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
