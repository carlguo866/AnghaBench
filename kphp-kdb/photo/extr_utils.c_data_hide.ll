; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_utils.c_data_hide.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_utils.c_data_hide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@get_i = common dso_local global i32 0, align 4
@del = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @data_hide(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @data_get_local_id_by_id(%struct.TYPE_6__* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %51

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @data_get_pos_by_local_id(%struct.TYPE_6__* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %35

28:                                               ; preds = %17
  %29 = load i32, i32* @get_i, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %32, 1
  %34 = call i32 @PERM(i32 %29, i32* %31, i32 %33)
  br label %35

35:                                               ; preds = %28, %27
  %36 = phi i32 [ -1, %27 ], [ %34, %28 ]
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @data_restore_add(%struct.TYPE_6__* %37, i32 %38, i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @lookup_set(i32* %42, i32 %43, i32 %44)
  %46 = load i32, i32* @del, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @PERM(i32 %46, i32* %48, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %35, %16
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @data_get_local_id_by_id(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @data_get_pos_by_local_id(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @PERM(i32, i32*, i32) #1

declare dso_local i32 @data_restore_add(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @lookup_set(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
