; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_inc_ref_olocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_inc_ref_olocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_ref = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.binder_ref*, i32, %struct.list_head*)* @binder_inc_ref_olocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_inc_ref_olocked(%struct.binder_ref* %0, i32 %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.binder_ref*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  store %struct.binder_ref* %0, %struct.binder_ref** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %3
  %12 = load %struct.binder_ref*, %struct.binder_ref** %5, align 8
  %13 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load %struct.binder_ref*, %struct.binder_ref** %5, align 8
  %19 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.list_head*, %struct.list_head** %7, align 8
  %22 = call i32 @binder_inc_node(i32 %20, i32 1, i32 1, %struct.list_head* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %58

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %11
  %29 = load %struct.binder_ref*, %struct.binder_ref** %5, align 8
  %30 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  br label %57

34:                                               ; preds = %3
  %35 = load %struct.binder_ref*, %struct.binder_ref** %5, align 8
  %36 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.binder_ref*, %struct.binder_ref** %5, align 8
  %42 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.list_head*, %struct.list_head** %7, align 8
  %45 = call i32 @binder_inc_node(i32 %43, i32 0, i32 1, %struct.list_head* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %58

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %34
  %52 = load %struct.binder_ref*, %struct.binder_ref** %5, align 8
  %53 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %51, %28
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %48, %25
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @binder_inc_node(i32, i32, i32, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
