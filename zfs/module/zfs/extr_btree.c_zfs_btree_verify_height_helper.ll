; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_btree.c_zfs_btree_verify_height_helper.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_btree.c_zfs_btree_verify_height_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i64)* @zfs_btree_verify_height_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_btree_verify_height_helper(i32* %0, %struct.TYPE_4__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @VERIFY0(i64 %16)
  store i32 1, i32* %4, align 4
  br label %50

18:                                               ; preds = %3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @VERIFY(i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = bitcast %struct.TYPE_4__* %23 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %8, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %45, %18
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sle i32 %26, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %35, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub nsw i64 %40, 1
  %42 = call i32 @zfs_btree_verify_height_helper(i32* %32, %struct.TYPE_4__* %39, i64 %41)
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %25

48:                                               ; preds = %25
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %15
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @VERIFY0(i64) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
