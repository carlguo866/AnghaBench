; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_dx_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_dx_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dx_frame = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.dx_root = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dx_frame*)* @dx_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dx_release(%struct.dx_frame* %0) #0 {
  %2 = alloca %struct.dx_frame*, align 8
  store %struct.dx_frame* %0, %struct.dx_frame** %2, align 8
  %3 = load %struct.dx_frame*, %struct.dx_frame** %2, align 8
  %4 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %3, i64 0
  %5 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = icmp eq %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %33

9:                                                ; preds = %1
  %10 = load %struct.dx_frame*, %struct.dx_frame** %2, align 8
  %11 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %10, i64 0
  %12 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.dx_root*
  %17 = getelementptr inbounds %struct.dx_root, %struct.dx_root* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %9
  %22 = load %struct.dx_frame*, %struct.dx_frame** %2, align 8
  %23 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %22, i64 1
  %24 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = call i32 @brelse(%struct.TYPE_4__* %25)
  br label %27

27:                                               ; preds = %21, %9
  %28 = load %struct.dx_frame*, %struct.dx_frame** %2, align 8
  %29 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %28, i64 0
  %30 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = call i32 @brelse(%struct.TYPE_4__* %31)
  br label %33

33:                                               ; preds = %27, %8
  ret void
}

declare dso_local i32 @brelse(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
