; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_getptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_getptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.mbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_getptr(%struct.mbuf* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  br label %8

8:                                                ; preds = %45, %3
  %9 = load i32, i32* %6, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %46

11:                                               ; preds = %8
  %12 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %13 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %20, %struct.mbuf** %4, align 8
  br label %47

21:                                               ; preds = %11
  %22 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 1
  %29 = load %struct.mbuf*, %struct.mbuf** %28, align 8
  %30 = icmp eq %struct.mbuf* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %21
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %39, %struct.mbuf** %4, align 8
  br label %47

40:                                               ; preds = %31
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %47

41:                                               ; preds = %21
  %42 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 1
  %44 = load %struct.mbuf*, %struct.mbuf** %43, align 8
  store %struct.mbuf* %44, %struct.mbuf** %5, align 8
  br label %45

45:                                               ; preds = %41
  br label %8

46:                                               ; preds = %8
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %47

47:                                               ; preds = %46, %40, %34, %17
  %48 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
