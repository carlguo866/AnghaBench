; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_itree.c_sysv_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_itree.c_sysv_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.kstat = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysv_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.path*, %struct.path** %5, align 8
  %11 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %9, align 8
  %15 = load %struct.path*, %struct.path** %5, align 8
  %16 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call i32 @d_inode(%struct.TYPE_2__* %17)
  %19 = load %struct.kstat*, %struct.kstat** %6, align 8
  %20 = call i32 @generic_fillattr(i32 %18, %struct.kstat* %19)
  %21 = load %struct.super_block*, %struct.super_block** %9, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 512
  %25 = load %struct.super_block*, %struct.super_block** %9, align 8
  %26 = load %struct.kstat*, %struct.kstat** %6, align 8
  %27 = getelementptr inbounds %struct.kstat, %struct.kstat* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sysv_nblocks(%struct.super_block* %25, i32 %28)
  %30 = mul nsw i32 %24, %29
  %31 = load %struct.kstat*, %struct.kstat** %6, align 8
  %32 = getelementptr inbounds %struct.kstat, %struct.kstat* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.super_block*, %struct.super_block** %9, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.kstat*, %struct.kstat** %6, align 8
  %37 = getelementptr inbounds %struct.kstat, %struct.kstat* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  ret i32 0
}

declare dso_local i32 @generic_fillattr(i32, %struct.kstat*) #1

declare dso_local i32 @d_inode(%struct.TYPE_2__*) #1

declare dso_local i32 @sysv_nblocks(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
