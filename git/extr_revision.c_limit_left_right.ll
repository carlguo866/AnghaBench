; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_limit_left_right.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_limit_left_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rev_info = type { i64 }

@SYMMETRIC_LEFT = common dso_local global i32 0, align 4
@SHOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit_list*, %struct.rev_info*)* @limit_left_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @limit_left_right(%struct.commit_list* %0, %struct.rev_info* %1) #0 {
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca %struct.commit*, align 8
  store %struct.commit_list* %0, %struct.commit_list** %3, align 8
  store %struct.rev_info* %1, %struct.rev_info** %4, align 8
  %7 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  store %struct.commit_list* %7, %struct.commit_list** %5, align 8
  br label %8

8:                                                ; preds = %52, %2
  %9 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %10 = icmp ne %struct.commit_list* %9, null
  br i1 %10, label %11, label %56

11:                                               ; preds = %8
  %12 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %13 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %12, i32 0, i32 0
  %14 = load %struct.commit*, %struct.commit** %13, align 8
  store %struct.commit* %14, %struct.commit** %6, align 8
  %15 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %16 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %11
  %20 = load %struct.commit*, %struct.commit** %6, align 8
  %21 = getelementptr inbounds %struct.commit, %struct.commit* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SYMMETRIC_LEFT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load i32, i32* @SHOWN, align 4
  %29 = load %struct.commit*, %struct.commit** %6, align 8
  %30 = getelementptr inbounds %struct.commit, %struct.commit* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %27, %19
  br label %51

35:                                               ; preds = %11
  %36 = load %struct.commit*, %struct.commit** %6, align 8
  %37 = getelementptr inbounds %struct.commit, %struct.commit* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SYMMETRIC_LEFT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @SHOWN, align 4
  %45 = load %struct.commit*, %struct.commit** %6, align 8
  %46 = getelementptr inbounds %struct.commit, %struct.commit* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %44
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %43, %35
  br label %51

51:                                               ; preds = %50, %34
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %54 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %53, i32 0, i32 1
  %55 = load %struct.commit_list*, %struct.commit_list** %54, align 8
  store %struct.commit_list* %55, %struct.commit_list** %5, align 8
  br label %8

56:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
