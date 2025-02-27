; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_do_get_dqblk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_do_get_dqblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, %struct.mem_dqblk }
%struct.mem_dqblk = type { i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i32, i32, i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dquot*, %struct.qc_dqblk*)* @do_get_dqblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_get_dqblk(%struct.dquot* %0, %struct.qc_dqblk* %1) #0 {
  %3 = alloca %struct.dquot*, align 8
  %4 = alloca %struct.qc_dqblk*, align 8
  %5 = alloca %struct.mem_dqblk*, align 8
  store %struct.dquot* %0, %struct.dquot** %3, align 8
  store %struct.qc_dqblk* %1, %struct.qc_dqblk** %4, align 8
  %6 = load %struct.dquot*, %struct.dquot** %3, align 8
  %7 = getelementptr inbounds %struct.dquot, %struct.dquot* %6, i32 0, i32 1
  store %struct.mem_dqblk* %7, %struct.mem_dqblk** %5, align 8
  %8 = load %struct.qc_dqblk*, %struct.qc_dqblk** %4, align 8
  %9 = call i32 @memset(%struct.qc_dqblk* %8, i32 0, i32 40)
  %10 = load %struct.dquot*, %struct.dquot** %3, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.mem_dqblk*, %struct.mem_dqblk** %5, align 8
  %14 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.qc_dqblk*, %struct.qc_dqblk** %4, align 8
  %17 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  %18 = load %struct.mem_dqblk*, %struct.mem_dqblk** %5, align 8
  %19 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.qc_dqblk*, %struct.qc_dqblk** %4, align 8
  %22 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mem_dqblk*, %struct.mem_dqblk** %5, align 8
  %24 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.qc_dqblk*, %struct.qc_dqblk** %4, align 8
  %27 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mem_dqblk*, %struct.mem_dqblk** %5, align 8
  %29 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.qc_dqblk*, %struct.qc_dqblk** %4, align 8
  %32 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.mem_dqblk*, %struct.mem_dqblk** %5, align 8
  %34 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.mem_dqblk*, %struct.mem_dqblk** %5, align 8
  %37 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load %struct.qc_dqblk*, %struct.qc_dqblk** %4, align 8
  %41 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  %42 = load %struct.mem_dqblk*, %struct.mem_dqblk** %5, align 8
  %43 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.qc_dqblk*, %struct.qc_dqblk** %4, align 8
  %46 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.mem_dqblk*, %struct.mem_dqblk** %5, align 8
  %48 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.qc_dqblk*, %struct.qc_dqblk** %4, align 8
  %51 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mem_dqblk*, %struct.mem_dqblk** %5, align 8
  %53 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.qc_dqblk*, %struct.qc_dqblk** %4, align 8
  %56 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.dquot*, %struct.dquot** %3, align 8
  %58 = getelementptr inbounds %struct.dquot, %struct.dquot* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  ret void
}

declare dso_local i32 @memset(%struct.qc_dqblk*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
