; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_indirect.c_ext4_blks_to_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_indirect.c_ext4_blks_to_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32)* @ext4_blks_to_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_blks_to_allocate(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = add nsw i32 %15, 1
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %10, align 4
  %21 = add i32 %20, %19
  store i32 %21, i32* %10, align 4
  br label %27

22:                                               ; preds = %13
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* %10, align 4
  %26 = add i32 %25, %24
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %58

29:                                               ; preds = %4
  %30 = load i32, i32* %10, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %53, %29
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ule i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @le32_to_cpu(i32 %48)
  %50 = icmp eq i64 %49, 0
  br label %51

51:                                               ; preds = %40, %36, %32
  %52 = phi i1 [ false, %36 ], [ false, %32 ], [ %50, %40 ]
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = load i32, i32* %10, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %32

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %27
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
