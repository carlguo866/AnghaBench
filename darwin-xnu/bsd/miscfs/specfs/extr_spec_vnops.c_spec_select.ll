; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_spec_select.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_spec_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i32, i32, i32)* }
%struct.vnop_select_args = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@cdevsw = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spec_select(%struct.vnop_select_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_select_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vnop_select_args* %0, %struct.vnop_select_args** %3, align 8
  %6 = load %struct.vnop_select_args*, %struct.vnop_select_args** %3, align 8
  %7 = getelementptr inbounds %struct.vnop_select_args, %struct.vnop_select_args* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @vfs_context_proc(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.vnop_select_args*, %struct.vnop_select_args** %3, align 8
  %11 = getelementptr inbounds %struct.vnop_select_args, %struct.vnop_select_args* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %15 [
    i32 128, label %16
  ]

15:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %37

16:                                               ; preds = %1
  %17 = load %struct.vnop_select_args*, %struct.vnop_select_args** %3, align 8
  %18 = getelementptr inbounds %struct.vnop_select_args, %struct.vnop_select_args* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cdevsw, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @major(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.vnop_select_args*, %struct.vnop_select_args** %3, align 8
  %30 = getelementptr inbounds %struct.vnop_select_args, %struct.vnop_select_args* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vnop_select_args*, %struct.vnop_select_args** %3, align 8
  %33 = getelementptr inbounds %struct.vnop_select_args, %struct.vnop_select_args* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 %27(i32 %28, i32 %31, i32 %34, i32 %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %16, %15
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @vfs_context_proc(i32) #1

declare dso_local i64 @major(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
