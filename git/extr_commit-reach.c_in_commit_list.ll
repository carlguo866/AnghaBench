; ModuleID = '/home/carl/AnghaBench/git/extr_commit-reach.c_in_commit_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-reach.c_in_commit_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.TYPE_5__*, %struct.commit_list* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.commit = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit_list*, %struct.commit*)* @in_commit_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_commit_list(%struct.commit_list* %0, %struct.commit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.commit_list*, align 8
  %5 = alloca %struct.commit*, align 8
  store %struct.commit_list* %0, %struct.commit_list** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  br label %6

6:                                                ; preds = %22, %2
  %7 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %8 = icmp ne %struct.commit_list* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %6
  %10 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %11 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.commit*, %struct.commit** %5, align 8
  %16 = getelementptr inbounds %struct.commit, %struct.commit* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = call i64 @oideq(i32* %14, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %27

21:                                               ; preds = %9
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %24 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %23, i32 0, i32 1
  %25 = load %struct.commit_list*, %struct.commit_list** %24, align 8
  store %struct.commit_list* %25, %struct.commit_list** %4, align 8
  br label %6

26:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @oideq(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
